//**************************************************************************************************
// glassesreplaystream_color_hack.c
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
#define KEY_ESC                 (27)
#define KEY_QUIT                ('q')
#define INPATH_MAX_LEN          (PATH_MAX_LEN)


//**************************************************************************************************
// globals
//
char         gInpath[INPATH_MAX_LEN];
unsigned int gFlagUserCliValid;
unsigned int gFlagUserCliHelp;


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
   char cc;

   unsigned numcams;
   unsigned flagnumcamscalculated;

   IplImage *frame;
   uchar *frameloc;

   struct timespec sleeptime;
   float fpsinstant;

   struct stat inpathst = {0};
   char infilenameprefix[2*INPATH_MAX_LEN];
   char infilenamefps[2*INPATH_MAX_LEN];
   char infilenameframe[2*INPATH_MAX_LEN];
   FILE *infilefps;
   unsigned frameidx_read;
   unsigned frameidx_calc;


   // appease the compiler
   //fpsinstant = 0;


   // process user cli
   gFlagUserCliValid=0;
   gFlagUserCliHelp=0;
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
   snprintf(infilenamefps,2*INPATH_MAX_LEN,"%s/%s_fps.txt",gInpath,infilenameprefix);
   if(0 != stat(infilenamefps,&inpathst))
   {
      fprintf(stderr,"ERROR: path %s does not exist!\n",infilenamefps);
      printusage(argv[0]);
      exit(1);
   }
   infilefps = fopen(infilenamefps,"r");
   if(0 == infilefps)
   {
      fprintf(stderr, "Could not open %s for reading capture FPS values\n",infilenamefps);
      exit(1);
   }


   frameidx_calc=0;

   sleeptime.tv_sec = sleeptime.tv_nsec = 0;

   flagnumcamscalculated = 0;


   fprintf(stderr,"%s\n",infilenamefps);
   // read fps for first frame: if nothing to read, just bail
   if(EOF != fscanf(infilefps,"[%d] fps := %f\n", &frameidx_read, &fpsinstant))
   {
      // initialize cc to something that's not 'q'
      cc=cvWaitKey(1);
      while(KEY_QUIT != cc)
      {
         // load image
         snprintf( infilenameframe,2*INPATH_MAX_LEN,"%s/%s_%06d.bmp",gInpath,
                   infilenameprefix,frameidx_calc );
         frame = cvLoadImage(infilenameframe,CV_LOAD_IMAGE_UNCHANGED);
         cvShowImage("Replay", frame);


         if(0 == flagnumcamscalculated)
         {
            numcams = 1;//frame->widthStep / FRAME_X_Y;
            fprintf(stderr,"widthstep:      %d\n", frame->widthStep);
            fprintf(stderr,"numcams:        %d\n", numcams);
            fprintf(stderr,"(float)numcams: %f\n", (float)frame->widthStep / (float)FRAME_X_Y);
            assert((0 < numcams) && (MAX_CAMS >= numcams));
            // write # of cameras
            printf("%c",SYMBOL_SOF);
            printf("%c",OPCODE_RESP_NUM_CAMS);
            printf("%c",(unsigned char)numcams);
            fflush(stdout);
            flagnumcamscalculated = 1;
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
         if(EOF == fscanf(infilefps,"[%d] fps := %f\n", &frameidx_read, &fpsinstant))
         {
            break;
         }

         assert(frameidx_calc == frameidx_read);

         // FIXME russ: this doesn't compensate for the time spent running code, so FPS will
         // be lower than it should be
         // sleep to output frames at desired fps
         sleeptime.tv_sec  = ((unsigned long)((1/fpsinstant)*NS_PER_SEC)) / NS_PER_SEC;
         sleeptime.tv_nsec = ((unsigned long)((1/fpsinstant)*NS_PER_SEC)) % NS_PER_SEC;

         // TODO: good practice to check return value
         //(void)nanosleep(&sleeptime, NULL);
         cc = cvWaitKey(sleeptime.tv_nsec/1000);
      }


      // release/destroy OpenCV objects
      cvReleaseImage(&frame);
   }

   // close files
   fclose(infilefps);


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
   fprintf(stderr,"press 'q' to end the program (user must have context of the video window!).\n");
   fprintf(stderr,"\n");
   fprintf(stderr,"quick and dirty argument descriptions:\n");
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

   while ((cc = getopt(argc, argv, "hi:")) != EOF)
   {
      switch (cc) {
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

