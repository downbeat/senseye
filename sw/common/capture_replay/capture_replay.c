//**************************************************************************************************
// Copyright 2015 Russ Bielawski 
// Copyright 2012 The University of Michigan
// 
// 
// capture_replay.c
// 
// Utility for replaying SensEye data from a replay file structure.
// 
// 
// AUTHOR        FULL NAME             EMAIL ADDRESS 
// Russ          Russ Bielawski        russ@bielawski.org 
// 
// VERSION   DATE        AUTHOR        DESCRIPTION 
// 1.00 00   2015-02-01  Russ          Created. 
// 1.00 01   2015-02-01  Russ          Renamed to capture_replay.
// 1.00.02   2015-02-09  Russ          Removed printusage, printhelp and parseargs local functions
//                                     in favor of the gutil_... helpers.  Switched to using GDP
//                                     v01_01 (transmitting the leading connection header is the
//                                     only change), with a CLI option to transmit the old GDP v0
//                                     way.  Switched to using protocol definitions from
//                                     glasses_proto.h rather than glasses.h (which changes the
//                                     value of the EXIT opcode).
//**************************************************************************************************


//**************************************************************************************************
// Includes
//
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <time.h>
#include <assert.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
 
// OpenCV sources
#include "cv.h"
#include "highgui.h"

#include "glasses.h"
#include "glasses_util.h"
#include "glasses_proto.h"


//**************************************************************************************************
// Defines / constants
//
#define USAGE_OPTIONS           "-i <path>"

#define HELP_TEXT               "SensEye glasses data replay utility.\n"                      \
                                "Specify input path over command-line:\n"                     \
                                "  -h         Print this help text and quit.\n"               \
                                "  -i <path>  Read video from <path>.\n"                      \
                                "  -v 0       Use GDP version 0 header.\n"                    \
                                "  -a         ASAP mode: send frames as quickly as possible"  \
                                "(ignore recorded FPS).\n"
#define NS_PER_SEC              (1000*1000*1000)
#define MAX_CAMS                (2)
#define FRAME_X_Y               (112)
#define FRAME_LEN               (FRAME_X_Y*FRAME_X_Y)
#define SCALINGVAL              (4)
#define ESC_KEY                 (27)
#define INPATH_MAX_LEN          (PATH_MAX_LEN)
// Command-line arguments definitions.  The enum and CLI_ARGS must match!  These constants
// initializalize the structure used by the CLI helper functions.
enum
{
   FLAG_INDEX_HELP = 0,
   FLAG_INDEX_INPUT_PATH,
   FLAG_INDEX_GDP_V0,
   FLAG_INDEX_ASAP_MODE
};
#define CLI_ARGS  {                                         \
                     { 'h', CLI_ARG_TYPE_FLAG,    "", 0 },  \
                     { 'i', CLI_ARG_TYPE_STRING,  "", 0 },  \
                     { 'v', CLI_ARG_TYPE_INTEGER, "", 0 },  \
                     { 'a', CLI_ARG_TYPE_FLAG,    "", 0 }   \
                  }

//**************************************************************************************************
// Globals
//
char     gInpath[MAX_LEN_CLI_ARGUMENT];


//**************************************************************************************************
// Function definitions
//

//******************************************************************************
// main
// The main program loop.
//
// Returns 0 on normal program termination and 1 otherwise.
//******************************************************************************
int main(int argc, char** argv)
{
   int ii,jj;

   struct cli_arg cli_args[] = CLI_ARGS;

   unsigned numcams;
   unsigned flagUseFpsFile;
   unsigned flagNumCamsCalculated;

   IplImage *frame;
   uchar *frameloc;

   struct timespec sleeptime;
   float fpsinstant, fpsinstantPrevious;

   struct stat inpathst = {0};
   char infilenameprefix[2*INPATH_MAX_LEN];
   char infilenamefps[2*INPATH_MAX_LEN];
   char infilenameframe[2*INPATH_MAX_LEN];
   FILE *infilefps;
   unsigned frameidx_read;
   unsigned frameidx_calc;

   struct gdp_connection gdp_conn;


   // Parse command-line input (CLI).
   if(0 != gutil_parse_args(argc, argv, cli_args, sizeof(cli_args)/sizeof(cli_args[0])))
   {
      gutil_print_usage(stderr, argv[0], USAGE_OPTIONS);
      exit(1);
   }

   // Print help text and exit if requested.
   if(0 != cli_args[FLAG_INDEX_HELP].is_flag_set)
   {
      gutil_print_help(stderr, argv[0], USAGE_OPTIONS, HELP_TEXT);
      exit(0);
   }

   if(0 == cli_args[FLAG_INDEX_INPUT_PATH].is_flag_set)
   {
      gutil_print_usage(stderr, argv[0], USAGE_OPTIONS);
      exit(1);
   }

   if(0 != cli_args[FLAG_INDEX_GDP_V0].is_flag_set)
   {
      // The -v flag only accepts 0 as valid input.
      if(0 != atoi(cli_args[FLAG_INDEX_GDP_V0].argument))
      {
         gutil_print_usage(stderr, argv[0], USAGE_OPTIONS);
         exit(1);
      }
   }


   // Adapt CLI input to previously used global variable.
   strncpy(gInpath, cli_args[FLAG_INDEX_INPUT_PATH].argument, MAX_LEN_CLI_ARGUMENT);

   if(0 != stat(gInpath,&inpathst))
   {
      fprintf(stderr,"ERROR: path %s does not exist!\n",gInpath);
      gutil_print_usage(stderr, argv[0], USAGE_OPTIONS);
      exit(1);
   }

   getdeepestdirname(gInpath,infilenameprefix);

   // check if we're using an FPS file or not
   snprintf(infilenamefps,2*INPATH_MAX_LEN,"%s/%s_fps.txt",gInpath,infilenameprefix);
   infilefps = 0;
   flagUseFpsFile=0;
   if(0 == stat(infilenamefps,&inpathst))
   {
      flagUseFpsFile=1;
      infilefps = fopen(infilenamefps,"r");
      if(0 == infilefps)
      {
         fprintf(stderr, "Could not open %s for reading capture FPS values\n",infilenamefps);
         exit(1);
      }
   }


   fpsinstant = fpsinstantPrevious = 0;
   frameidx_calc=0;

   sleeptime.tv_sec = sleeptime.tv_nsec = 0;

   // appease the compiler
   numcams = 0;
   flagNumCamsCalculated = 0;
   snprintf( infilenameframe,2*INPATH_MAX_LEN,"%s/%s_%06d.bmp",gInpath,
             infilenameprefix,frameidx_calc );
   // the first FPS value is meaningless
   if((0 == flagUseFpsFile) || (EOF == fscanf(infilefps,"[%d] fps := %f\n", &frameidx_read, &fpsinstant)))
   {
      frameidx_read = 0;
      fpsinstant = 0;
   }
   while(0 == stat(infilenameframe,&inpathst))
   {
      // load image
      frame = cvLoadImage(infilenameframe,CV_LOAD_IMAGE_UNCHANGED);

      if(0 == flagNumCamsCalculated)
      {
         numcams = frame->widthStep / FRAME_X_Y;
         assert((0 < numcams) && (MAX_CAMS >= numcams));
         // write # of cameras
         printf("%c",GDP_SYMBOL_SOF);
         if(0 != cli_args[FLAG_INDEX_GDP_V0].is_flag_set)
         {
            printf("%c",GDP_OPCODE_NUM_CAMS_RESP);
            printf("%c",(unsigned char)numcams);
            fflush(stdout);
         }
         else
         {
            printf("%c",GDP_OPCODE_CONNECT_RESP);
            // Print GDP v01_01 header.
            gdp_conn.istream = NULL;
            gdp_conn.ostream = stdout;
            gdp_conn.header.version_major = 0x01;
            gdp_conn.header.version_minor = 0x01;
            gdp_conn.header.num_cams = numcams;
            gdp_conn.header.flags.is_scanline_mode = 1;
            for(ii = 0; ii < numcams; ++ii)
            {
               gdp_conn.header.resolution[ii].horizontal = 112;
               gdp_conn.header.resolution[ii].vertical   = 112;
            }
            if(0 != gdp_send_header(&gdp_conn))
            {
               fprintf(stderr,"ERROR: Error sending GDP v01_01 header.\n");
               exit(1);
            }
         }
         flagNumCamsCalculated = 1;
      }


      // write image on stdout
      printf("%c",GDP_SYMBOL_SOF);
      printf("%c",GDP_OPCODE_FRAME);
      for(ii = 0; ii < FRAME_X_Y; ++ii)
      {
         frameloc = (uchar*)(frame->imageData + (ii*frame->widthStep));
         for(jj = 0; jj < FRAME_X_Y*numcams; ++jj)
         {
            printf("%c",(uchar)frameloc[jj]);
         }
      }
      fflush(stdout);


      ++frameidx_calc;
      // read fps
      fpsinstantPrevious = fpsinstant;
      // this code will run even if the FPS file doesn't have as many entries as there are frames
      if((0 == flagUseFpsFile) || (EOF == fscanf(infilefps,"[%d] fps := %f\n", &frameidx_read, &fpsinstant)))
      {
         // russ: unsure if fscanf will change fpsinstant, but this may not be necessary
         fpsinstant = fpsinstantPrevious;
      }
      else
      {
         assert(frameidx_calc == frameidx_read);
      }

      // FIXME russ: this doesn't compensate for the time spent running code, so FPS will
      // be lower than it should be
      // sleep to output frames at desired fps
      sleeptime.tv_sec  = ((unsigned long)((1/fpsinstant)*NS_PER_SEC)) / NS_PER_SEC;
      sleeptime.tv_nsec = ((unsigned long)((1/fpsinstant)*NS_PER_SEC)) % NS_PER_SEC;

      if(0 == cli_args[FLAG_INDEX_ASAP_MODE].is_flag_set)
      {
         // TODO: good practice to check return value
         (void)nanosleep(&sleeptime, NULL);
      }

      // release/destroy OpenCV objects
      cvReleaseImage(&frame);

      snprintf( infilenameframe,2*INPATH_MAX_LEN,"%s/%s_%06d.bmp",gInpath,
                infilenameprefix,frameidx_calc );
   }


   // close files
   if(0 != flagUseFpsFile)
   {
      fclose(infilefps);
   }


   // tell listening program that we're done here
   printf("%c",GDP_SYMBOL_SOF);
   printf("%c",GDP_OPCODE_EXIT);
   fflush(stdout);

   return 0;
}
