//**************************************************************************************************
// ml_rawfeatures_knearest.c
//
// Russ Bielawski
// 2012-11-18: created
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
// russ: unsure which is best to use (or what values)
#define ED_THRESH_ABS           (165)
#define ED_THRESH_REL           (1)

//**************************************************************************************************
// globals
//
static char     gInpath[INPATH_MAX_LEN];
static unsigned gFlagUserCliValid;
static unsigned gFlagDrawGrid;
static unsigned gFlagUserCliHelp;
static int      gLastGazeX;
static int      gLastGazeY;


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
   char indat[256*1024];    // huge because I am a lazy man
   char *indatloc;
   int readcnt;
   int totallen;

   unsigned numcams;

   IplImage *frame, *framescaledup;
   uchar *frameloc, *framescaleduploc;
   IplImage *frame2, *frame2scaledup;
   uchar *frame2loc, *frame2scaleduploc;
   // double wide!
   IplImage *framedual, *framedualscaledup;
   uchar *framedualloc1, *framedualloc2, *framedualscaleduploc1, *framedualscaleduploc2;

   // gaze pictures
   IplImage *gazeoverlay;

   char infilenameprefix[2*INPATH_MAX_LEN];
   char infilenamegazecoords[2*INPATH_MAX_LEN];
   FILE *infilegazecoords;

   unsigned frameidx_calc, frameidx_read;

   /* TODO russ: can't get writing video to work yet!
   CvVideoWriter *vidout;*/


   // process user cli
   gFlagUserCliValid=0;
   gFlagDrawGrid=0;
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


   // FIXME russ asdfasdf
   // FIXME russ: find a way to get the correct path name!
   getdeepestdirname(gInpath,infilenameprefix);
   mkdir_p(gInpath);
   snprintf(infilenamegazecoords,2*INPATH_MAX_LEN,"%s/%s_gazecoords.txt",gInpath,infilenameprefix);
   infilegazecoords = fopen(infilenamegazecoords,"r");
   if(0 == infilegazecoords)
   {
      fprintf(stderr, "Could not open %s for reading gaze coordinates\n",infilenamegazecoords);
      exit(1);
   }


   frameidx_calc=0;


   // init our frame
   frame = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   framescaledup = cvCreateImage(cvSize( FRAME_X_Y*SCALINGVAL,
                                         FRAME_X_Y*SCALINGVAL ), IPL_DEPTH_8U, 1);
   frame2 = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   frame2scaledup = cvCreateImage(cvSize( FRAME_X_Y*SCALINGVAL,
                                          FRAME_X_Y*SCALINGVAL ), IPL_DEPTH_8U, 1);
   framedual = cvCreateImage(cvSize(FRAME_X_Y*2,FRAME_X_Y), IPL_DEPTH_8U, 1);
   framedualscaledup = cvCreateImage(cvSize( FRAME_X_Y*SCALINGVAL*2,
                                             FRAME_X_Y*SCALINGVAL ), IPL_DEPTH_8U, 1);
   gazeoverlay = cvCreateImage(cvSize( FRAME_X_Y*SCALINGVAL*2,
                                       FRAME_X_Y*SCALINGVAL ), IPL_DEPTH_8U, 3);

   // appease the compiler
   frameloc = framescaleduploc = 0;
   frame2loc = frame2scaleduploc = 0;
   framedualloc1 = framedualloc2 = framedualscaleduploc1 = framedualscaleduploc2 = 0;


   // appease the compiler
   cc=(char)0;


   readuntilchar(stdin,SYMBOL_SOF);
   indat[0] = readchar(stdin);
   assert(OPCODE_RESP_NUM_CAMS == (unsigned char)indat[0]);
   numcams = (unsigned)readchar(stdin);
   if(2 != numcams)
   {
      fprintf(stderr,"ERROR: this program expects 2 cameras exactly!\n");
      printusage(argv[0]);
      exit(1);
   }


   while(1)
   {
      readuntilchar(stdin,SYMBOL_SOF);
      indat[0] = readchar(stdin);
      assert( (OPCODE_FRAME == (unsigned char)indat[0]) ||
              (SYMBOL_EXIT  == (unsigned char)indat[0]) );
      if(SYMBOL_EXIT == (unsigned char)indat[0])
      {
         break;
      }

      totallen=0;
      indatloc=indat;
      while(FRAME_LEN*numcams > totallen)
      {
         readcnt = fread(indatloc,1,(FRAME_LEN*numcams)-totallen,stdin);
         totallen+=readcnt;
         indatloc+=readcnt;
      }
      *indatloc = '\0';


      // find max and min pixel values for normalization
      for(ii = 0; ii < FRAME_X_Y; ++ii)
      {
         frameloc = (uchar*)(frame->imageData + (ii*frame->widthStep));
         frame2loc = (uchar*)(frame2->imageData + (ii*frame2->widthStep));
         framedualloc1 = (uchar*)(framedual->imageData + (ii*framedual->widthStep));
         framedualloc2 = (uchar*)( framedual->imageData
                                   + (ii*framedual->widthStep)
                                   + (framedual->widthStep/2) );
         for(jj = 0; jj < FRAME_X_Y; ++jj)
         {
            frameloc[jj]  = framedualloc1[jj] = (uchar)indat[((numcams*ii)*FRAME_X_Y)+jj];
            frame2loc[jj] = framedualloc2[jj] = (uchar)indat[((numcams*ii+1)*FRAME_X_Y)+jj];
         }
      }

      // scale up the frames
      cvResize(frame,framescaledup,CV_INTER_LINEAR);
      cvResize(frame2,frame2scaledup,CV_INTER_LINEAR);
      cvResize(framedual,framedualscaledup,CV_INTER_LINEAR);


      if(EOF == fscanf( infilegazecoords, "[%d] (x,y) := (%d,%d)\n",
                        &frameidx_read,&gLastGazeX,&gLastGazeY ))
      {
         // TODO error message?  this shouldn't happen I think
         break;
      }
      cvCvtColor(framedualscaledup, gazeoverlay, CV_GRAY2RGB);
      cvCircle( gazeoverlay,
                cvPoint(cvRound((gLastGazeX+FRAME_X_Y)*SCALINGVAL),cvRound(gLastGazeY*SCALINGVAL)),
                1, CV_RGB(0,255,0), 4, 8, 0);
      //FIXME
      if(0 != gFlagDrawGrid)
      {
         cvLine( gazeoverlay,
                 cvPoint((0+FRAME_X_Y)*SCALINGVAL,(FRAME_X_Y/3)*SCALINGVAL),
                 cvPoint((FRAME_X_Y+FRAME_X_Y)*SCALINGVAL,(FRAME_X_Y/3)*SCALINGVAL),
                 CV_RGB(255,0,0),1,8,0 );
         cvLine( gazeoverlay,
                 cvPoint((0+FRAME_X_Y)*SCALINGVAL,(2*FRAME_X_Y/3)*SCALINGVAL),
                 cvPoint((FRAME_X_Y+FRAME_X_Y)*SCALINGVAL,(2*FRAME_X_Y/3)*SCALINGVAL),
                 CV_RGB(255,0,0),1,8,0 );
         cvLine( gazeoverlay,
                 cvPoint((FRAME_X_Y/3+FRAME_X_Y)*SCALINGVAL,0*SCALINGVAL),
                 cvPoint((FRAME_X_Y/3+FRAME_X_Y)*SCALINGVAL,FRAME_X_Y*SCALINGVAL),
                 CV_RGB(255,0,0),1,8,0 );
         cvLine( gazeoverlay,
                 cvPoint((2*FRAME_X_Y/3+FRAME_X_Y)*SCALINGVAL,0*SCALINGVAL),
                 cvPoint((2*FRAME_X_Y/3+FRAME_X_Y)*SCALINGVAL,FRAME_X_Y*SCALINGVAL),
                 CV_RGB(255,0,0),1,8,0 );
      }
      cvShowImage("Gaze Overlay", gazeoverlay);
      printf("[%06d] gaze (x,y) := (%3d,%3d)\n",frameidx_calc,gLastGazeX,gLastGazeY);
      fflush(stdout);

      ++frameidx_calc;


      // let the user kill the program with 'q'
      // there is a tradeoff here: longer is better for step mode, shorter better for stream mode.
      // the choice of 9 ms delay means this program can't do much faster than ~110 fps
      cc = cvWaitKey(9);
      if(KEY_QUIT == cc)
      {
         break;
      }
   
   }


   // release/destroy OpenCV objects
   cvReleaseImage(&frame);
   cvReleaseImage(&framescaledup);
   cvReleaseImage(&frame2);
   cvReleaseImage(&frame2scaledup);
   cvReleaseImage(&framedual);
   cvReleaseImage(&framedualscaledup);
   cvReleaseImage(&gazeoverlay);
   cvDestroyWindow("Gaze Overlay");


   // close files
   fclose(infilegazecoords);
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
   fprintf(stderr, "Usage: %s -i PATH\n", progname);
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
   fprintf(stderr,"  -g         draw 3x3 grid lines\n");
   fprintf(stderr,"  -h         show help and exit\n");
   fprintf(stderr,"  -i PATH    load attributes files from PATH (should be a directory)\n");
}

//
// parseargs: parse cli
//
static int parseargs(int argc, char **argv) {
   char cc;
   extern char *optarg;

   errno=0;

   while ((cc = getopt(argc, argv, "ghni:")) != EOF)
   {
      switch (cc) {
         case 'g':
            gFlagDrawGrid = 1;
            break;
         case 'h':
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

