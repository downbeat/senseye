//**************************************************************************************************
// ml_eval.cpp
//
// Russ Bielawski
// 2012-12-07: created
//**************************************************************************************************


//**************************************************************************************************
// includes
//
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <time.h>
#include <assert.h>
#include <signal.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>

// opencv sources
#include "cv.h"
#include "highgui.h"
#include "ml.h"

#include "glasses.h"
#include "glasses_cv.h"
#include "glasses_ml.h"


//**************************************************************************************************
// defines / constants
//
#define NS_PER_SEC              (1000*1000*1000)
#define MAX_CAMS                (2)
#define FRAME_X_Y               (112)
#define FRAME_LEN               (FRAME_X_Y*FRAME_X_Y)
#define SCALINGVAL              (2)
#define KEY_ESC                 (27)
#define KEY_QUIT                ('q')
// huge because I am a lazy man
#define MAX_FRAMES              (256*1024)
#define INCOMING_WINDOW         ("Raw Video")
#define TEST_SET_RATIO          (0.5)
// russ: unsure which is best to use (or what values)
#define CANNY_THRESH_LOW        (70)
#define CANNY_THRESH_RATIO      (2)



//**************************************************************************************************
// globals
//
static char     gInpath[PATH_MAX_LEN];
static char     gOutpath[PATH_MAX_LEN];
static unsigned gFlagUserCliValid;
static unsigned gFlagUserCliHelp;
static unsigned gFlagNormalizeIncomingFrames;


//**************************************************************************************************
// local function prototypes
//
static void      printusage(char *progname);
static void      printhelp(char *progname);
static int       parseargs(int argc, char **argv);


//**************************************************************************************************
// main
//
int main(int argc, char** argv)
{
   unsigned ff;
   unsigned ii;

   unsigned frameFileIdx[MAX_FRAMES];
   unsigned frameFlagCovered[MAX_FRAMES];
   char    *frameFilename[MAX_FRAMES];
   unsigned gazeLabel[MAX_FRAMES];
   unsigned gazeLabel_read;

   int frameidx;
   unsigned frameidx_read;

   unsigned numframes;

   IplImage *frameDual;

   char filenameprefix[2*PATH_MAX_LEN];
   char infilenamelabelshuman[2*PATH_MAX_LEN];
   FILE *infilelabelshuman;
   char outfilenamelabelshuman[2*PATH_MAX_LEN];
   FILE *outfilelabelshuman;


   // process user cli
   gFlagUserCliValid=0;
   gFlagUserCliHelp=0;
   gFlagNormalizeIncomingFrames = 0;
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

   // allocate data for array of filename strings
   for(ii=0; ii<MAX_FRAMES; ++ii)
   {
      // TODO: I ain't deallocating this!
      frameFilename[ii] = (char*)malloc(sizeof(char)*2*PATH_MAX_LEN);
   }

   // FIXME russ: find a way to get the correct path name!
   getdeepestdirname(gInpath,filenameprefix);
   mkdir_p(gOutpath);
   snprintf(infilenamelabelshuman,2*PATH_MAX_LEN,"%s/%s_labelshuman.txt",gInpath,filenameprefix);
   snprintf(outfilenamelabelshuman,2*PATH_MAX_LEN,"%s/%s_labelshuman.txt",gOutpath,filenameprefix);


   // read human labels
   // we'll set data for all of the frames we will use.  a frame will only be used if both
   // a) a picture file exists and
   // b) a ground truth label is found in the *labelshuman file
   infilelabelshuman = fopen(infilenamelabelshuman,"r");
   if(0 == infilelabelshuman)
   {
      fprintf(stderr, "Could not open %s for reading human labels\n",infilenamelabelshuman);
      exit(1);
   }

   numframes = frameidx = frameidx_read = 0;
   while(EOF != fscanf(infilelabelshuman,"[%d] label_human := %d\n",&frameidx_read,&gazeLabel_read))
   {
      frameFileIdx[frameidx] = frameidx_read;
      frameFlagCovered[frameidx] = 0;
      gazeLabel[frameidx] = gazeLabel_read;
      // save the image filename for later
      snprintf( (char*)(frameFilename[frameidx]),2*PATH_MAX_LEN,"%s/%s_%06d.bmp",gInpath,
                filenameprefix,frameFileIdx[frameidx] );
      ++frameidx;
      if(MAX_FRAMES <= frameidx)
      {
         break;
      }
   }
   numframes=frameidx;

   // open output file
   outfilelabelshuman = fopen(outfilenamelabelshuman,"w");
   if(0 == outfilelabelshuman)
   {
      fprintf(stderr, "Could not open %s for writing labels in random order\n",outfilenamelabelshuman);
      exit(1);
   }


   // init our frame
   frameDual = cvCreateImage(cvSize(FRAME_X_Y*2,FRAME_X_Y), IPL_DEPTH_8U, 1);


   //FIXME russ: seed the random number generator
   //srand(time(0));
   for(ff=0; ff<numframes; ++ff)
   {
      // randomly choose a new frame to be a training frame, ensure it hasn't already been used
      do {
         frameidx = rand() % numframes;
      } while(0 != frameFlagCovered[frameidx]);
      frameFlagCovered[frameidx] = 1;

      // read in frame
      frameDual = cvLoadImage(frameFilename[frameidx],CV_LOAD_IMAGE_UNCHANGED);
      // we don't need the old filename anymore!  just write over it.
      snprintf( (char*)(frameFilename[frameidx]),2*PATH_MAX_LEN,"%s/%s_%06d.bmp",gOutpath,
                filenameprefix,ff );
      cvSaveImage(frameFilename[frameidx],frameDual);
      fprintf(outfilelabelshuman,"[%06d] label_human := %d\n",ff,(unsigned)gazeLabel[frameidx]);
      fflush(outfilelabelshuman);
   }

   // release/destroy OpenCV objects
   cvReleaseImage(&frameDual);

   // close output file
   fclose(outfilelabelshuman);
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
   fprintf(stderr, "Usage: %s -i INPATH -o OUTPATH\n", progname);
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
   fprintf(stderr,"  -i PATH    load attributes files from/to PATH (should be a directory)\n");
   fprintf(stderr,"  -o PATH    save attributes files (ML labels) to PATH (should be a directory)\n");
}

//
// parseargs: parse cli
//
static int parseargs(int argc, char **argv) {
   char cc;
   unsigned flagInpathSupplied;
   unsigned flagOutpathSupplied;
   extern char *optarg;


   flagInpathSupplied = flagOutpathSupplied = 0;
   errno=0;

   while ((cc = getopt(argc, argv, "hi:o:")) != EOF)
   {
      switch (cc) {
         case 'h':
            gFlagUserCliHelp = 1;
            break;
         case 'i':
            if(PATH_MAX_LEN < strlen(optarg))
            {
               fprintf(stderr,"ERROR: path too long!\n");
               errno=ENAMETOOLONG;
               break;
            }
            strncpy(gInpath, optarg, PATH_MAX_LEN);
            gInpath[strlen(optarg)] = '\0';
            // set flags
            if(0 != flagOutpathSupplied)
            {
               gFlagUserCliValid = 1;
            }
            flagInpathSupplied = 1;
            break;
         case 'o':
            if(PATH_MAX_LEN < strlen(optarg))
            {
               fprintf(stderr,"ERROR: path too long!\n");
               errno=ENAMETOOLONG;
               break;
            }
            strncpy(gOutpath, optarg, PATH_MAX_LEN);
            gOutpath[strlen(optarg)] = '\0';
            // set flags
            if(0 != flagInpathSupplied)
            {
               gFlagUserCliValid = 1;
            }
            flagOutpathSupplied = 1;
            break;
         default:
            errno=EINVAL;
            break;
      }
   }

   return(errno);
}

