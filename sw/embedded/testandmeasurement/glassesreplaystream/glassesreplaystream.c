//**************************************************************************************************
// glassesreplaystream.c
//
// Russ Bielawski
// 2012-11-12: created
//**************************************************************************************************


//**************************************************************************************************
// includes
//
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <time.h>
#include <assert.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>

// opencv sources
#include "cv.h"
#include "highgui.h"

#include "glasses.h"


//**************************************************************************************************
// defines / constants
//
#define NS_PER_SEC              (1000*1000*1000)
#define MAX_CAMS                (2)
#define FRAME_X_Y               (112)
#define FRAME_LEN               (FRAME_X_Y*FRAME_X_Y)
#define SCALINGVAL              (4)
#define ESC_KEY                 (27)
#define INPATH_MAX_LEN          (PATH_MAX_LEN)


//**************************************************************************************************
// globals
//
char     gInpath[INPATH_MAX_LEN];
unsigned gFlagUserCliValid;
unsigned gFlagAsapMode;
unsigned gFlagUserCliHelp;


//**************************************************************************************************
// local function prototypes
//
static void printusage(char *progname);
static void printhelp(char *progname);
static int  parseargs(int argc, char **argv);


//**************************************************************************************************
// main
//
int main(int argc, char** argv)
{
   int ii,jj;

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


   // process user cli
   gFlagUserCliValid=0;
   gFlagUserCliHelp=0;
   gFlagAsapMode=0;
   if(0 != parseargs(argc,argv))
   {
      printusage(argv[0]);
      exit(1);
   }
   if(0 == gFlagUserCliValid)
   {
      printusage(argv[0]);
      exit(1);
   }
   if(0 != gFlagUserCliHelp)
   {
      printhelp(argv[0]);
      exit(0);
   }
   if(0 != stat(gInpath,&inpathst))
   {
      fprintf(stderr,"ERROR: path %s does not exist!\n",gInpath);
      printusage(argv[0]);
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
         printf("%c",SYMBOL_SOF);
         printf("%c",OPCODE_RESP_NUM_CAMS);
         printf("%c",(unsigned char)numcams);
         fflush(stdout);
         flagNumCamsCalculated = 1;
      }


      // write image on stdout
      printf("%c",SYMBOL_SOF);
      printf("%c",OPCODE_FRAME);
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

      if(0 == gFlagAsapMode)
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
   printf("%c",SYMBOL_SOF);
   printf("%c",SYMBOL_EXIT);
   fflush(stdout);

   return 0;
}


//**************************************************************************************************
// local function definitions
//

//
// printusage: prints a usage string for the program
//
static void printusage(char *progname)
{

   fprintf(stderr, "Usage: %s [-i PATH]\n", progname);
}

//
// printhelp: prints the help for the program
//
static void printhelp(char *progname)
{
   printusage(progname);
   fprintf(stderr,"TODO: help not well written\n");
   fprintf(stderr,"press ESC to end the program (user must have context of the video window!).\n");
   fprintf(stderr,"\n");
   fprintf(stderr,"quick and dirty argument descriptions:\n");
   fprintf(stderr,"  -a         ASAP mode.  just pump out frames as quickly as possible\n");
   fprintf(stderr,"  -h         show help and exit\n");
   fprintf(stderr,"  -i PATH    replay video located at PATH\n");
}

//
// parseargs: parse cli
//
static int parseargs(int argc, char **argv)
{
   char cc;
   extern char *optarg;

   errno=0;

   while ((cc = getopt(argc, argv, "ahi:")) != EOF)
   {
      switch (cc) {
         case 'a':
            gFlagAsapMode = 1;
            break;
         case 'h':
            gFlagUserCliValid = 1;
            gFlagUserCliHelp = 1;
            break;
         case 'i':
            if(INPATH_MAX_LEN < strlen(optarg))
            {
               fprintf(stderr,"ERROR: path too long!\n");
               errno=ENAMETOOLONG;
               break;
            }
            gFlagUserCliValid = 1;
            strncpy(gInpath, optarg, INPATH_MAX_LEN);
            gInpath[strlen(optarg)] = '\0';
            break;
         default:
            errno=EINVAL;
            break;
      }
   }

   return(errno);
}

