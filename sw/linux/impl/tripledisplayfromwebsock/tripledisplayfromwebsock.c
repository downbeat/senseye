//**************************************************************************************************
// tripledisplayfromwebsock.c
//
// Russ Bielawski
// 2012-10-29: created as captureStreamDual.c
// 2012-11-12: split out front end display and save functionality
// 2013-06-26: split out from frontdisplayandsave.c (this is getting sloppy)
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
#define MAX_CAMS                (3)
#define FRAME_X_Y               (112)
#define FRAME_LEN               (FRAME_X_Y*FRAME_X_Y)
#define SCALINGVAL              (4)
#define KEY_ESC                 (27)
#define KEY_QUIT                ('q')
#define OUTPATH_MAX_LEN         (PATH_MAX_LEN)


//**************************************************************************************************
// globals
//
static FILE     *gOutfilefps;
static char     gOutpath[OUTPATH_MAX_LEN];
static unsigned gFlagUserCliValid;
static unsigned gFlagUserCliHelp;
static unsigned gFlagUserCliModeSelected;
static unsigned gFlagNoWriteVideo;
static unsigned gFlagRawMode;
static unsigned gFlagDrawGrid;


//**************************************************************************************************
// local function prototypes
//
static void printusage(char *progname);
static void printhelp(char *progname);
static int  parseargs(int argc, char **argv);
static void terminate(int xx);


//**************************************************************************************************
// main
//
int main(int argc, char** argv)
{
   int ii,jj,xx,yy;
   char cc;
   char indat[256*1024];    // huge because I am a lazy man
   char *indatloc;
   int readcnt;
   int totallen;

   unsigned numcams;

   IplImage *frame, *framenorm, *framescaledup;
   uchar *frameloc, *framenormloc, *framescaleduploc;
   uchar framevalmin, framevalmax;
   IplImage *frame2, *frame2norm, *frame2scaledup;
   uchar *frame2loc, *frame2normloc, *frame2scaleduploc;
   uchar frame2valmin, frame2valmax;
   IplImage *frame3, *frame3norm, *frame3scaledup;
   uchar *frame3loc, *frame3normloc, *frame3scaleduploc;
   uchar frame3valmin, frame3valmax;

   // double wide!
   IplImage *framedoublenorm, *framedoublescaledup;
   uchar *framedoublenormloc1, *framedoublenormloc2, *framedoublenormloc3,
         *framedoublescaleduploc1, *framedoublescaleduploc2, *framedoublescaleduploc3;

   // triple wide!
   IplImage *frametripnorm, *frametripscaledup;
   uchar *frametripnormloc1, *frametripnormloc2, *frametripnormloc3,
         *frametripscaleduploc1, *frametripscaleduploc2, *frametripscaleduploc3;

   IplImage *gridoverlay;

   struct timespec time, timeprevious;
   double fpsinstant;
   double fpsmin;
   double fpsmax;

   struct stat outpathst = {0};
   char outfilenameprefix[2*OUTPATH_MAX_LEN];
   char outfilenamefps[2*OUTPATH_MAX_LEN];
   char outfilenameframe[2*OUTPATH_MAX_LEN];
   unsigned int frameidx;

   /* TODO russ: can't get writing video to work yet!
   CvVideoWriter *vidout;*/


   // appease the compiler
   gOutfilefps = 0;


   // process user cli
   gFlagUserCliValid=0;
   gFlagUserCliHelp=0;
   gFlagUserCliModeSelected=0;
   gFlagNoWriteVideo=0;
   gFlagRawMode=0;
   gFlagDrawGrid=0;
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
   if(0 == gFlagNoWriteVideo)
   {
      if(0 == stat(gOutpath,&outpathst))
      {
         fprintf(stderr,"ERROR: path %s already exists!\n",gOutpath);
         printusage(argv[0]);
         exit(1);
      }
   }


   if(0 != gFlagNoWriteVideo)
   {
      printf("quiet mode: video will not be saved\n");
   }
   else
   {
      getdeepestdirname(gOutpath,outfilenameprefix);
      mkdir_p(gOutpath);

      snprintf(outfilenamefps,2*OUTPATH_MAX_LEN,"%s/%s_fps.txt",gOutpath,outfilenameprefix);
      printf("video path: %s\n",gOutpath);

      gOutfilefps = fopen(outfilenamefps,"w");
      if(0 == gOutfilefps)
      {
         fprintf(stderr, "Could not open %s for writing capture FPS values\n",outfilenamefps);
         exit(1);
      }

      // close our open file in case of some terminating signal
      signal(SIGHUP, terminate);
      signal(SIGINT, terminate);
      signal(SIGABRT, terminate);
      signal(SIGQUIT, terminate);
      signal(SIGTERM, terminate);
      // broken pipe
      signal(SIGPIPE, terminate);

      /* TODO russ: can't get writing video to work yet!
      fprintf(stderr,"%s\n",vidoutname);
      vidout = cvCreateVideoWriter( vidoutname,
                                    CV_FOURCC('F','M','P','4'),
                                    10, // placehold FPS
                                    cvSize(FRAME_X_Y,FRAME_X_Y),
                                    0 );
      assert(vidout);*/
   }

   frameidx=0;


   // init our frame
   frame = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   framenorm = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   framescaledup = cvCreateImage(cvSize( FRAME_X_Y*SCALINGVAL,
                                         FRAME_X_Y*SCALINGVAL ), IPL_DEPTH_8U, 1);
   frame2 = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   frame2norm = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   frame2scaledup = cvCreateImage(cvSize( FRAME_X_Y*SCALINGVAL,
                                          FRAME_X_Y*SCALINGVAL ), IPL_DEPTH_8U, 1);
   frame3 = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   frame3norm = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   frame3scaledup = cvCreateImage(cvSize( FRAME_X_Y*SCALINGVAL,
                                          FRAME_X_Y*SCALINGVAL ), IPL_DEPTH_8U, 1);
   framedoublenorm = cvCreateImage(cvSize(FRAME_X_Y*2,FRAME_X_Y), IPL_DEPTH_8U, 1);
   framedoublescaledup = cvCreateImage(cvSize( FRAME_X_Y*SCALINGVAL*2,
                                             FRAME_X_Y*SCALINGVAL ), IPL_DEPTH_8U, 1);
   frametripnorm = cvCreateImage(cvSize(FRAME_X_Y*3,FRAME_X_Y), IPL_DEPTH_8U, 1);
   frametripscaledup = cvCreateImage(cvSize( FRAME_X_Y*SCALINGVAL*3,
                                             FRAME_X_Y*SCALINGVAL ), IPL_DEPTH_8U, 1);
   gridoverlay = cvCreateImage(cvSize( FRAME_X_Y*SCALINGVAL*2,
                                       FRAME_X_Y*SCALINGVAL ), IPL_DEPTH_8U, 3);
   // appease the compiler
   frame2loc = frame2normloc = frame2scaleduploc = 0;
   frame3loc = frame3normloc = frame3scaleduploc = 0;
   framedoublenormloc1 = framedoublenormloc2 = framedoublenormloc3 = 0;
   framedoublescaleduploc1 = framedoublescaleduploc2 = framedoublescaleduploc3 = 0;
   frametripnormloc1 = frametripnormloc2 = frametripnormloc3 = 0;
   frametripscaleduploc1 = frametripscaleduploc2 = frametripscaleduploc3 = 0;


   time.tv_sec = time.tv_nsec = timeprevious.tv_sec = timeprevious.tv_nsec = 0;
   fpsinstant = fpsmin = fpsmax = -1;


   readuntilchar(stdin,SYMBOL_SOF);
   indat[0] = readchar(stdin);
   assert(OPCODE_RESP_NUM_CAMS == (unsigned char)indat[0]);
   numcams = (unsigned)readchar(stdin);
   assert((0 < numcams) && (MAX_CAMS >= numcams));


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
      fprintf(stderr,"received %d bytes\n",totallen);


      // calculate FPS
      // TODO: should be a function?
      timeprevious = time;
      (void)clock_gettime(CLOCK_MONOTONIC,&time);
      fpsinstant = (NS_PER_SEC) / (double)( (NS_PER_SEC)*(time.tv_sec - timeprevious.tv_sec)
                                            + time.tv_nsec - timeprevious.tv_nsec );
      if((0 < fpsmin) || (fpsinstant < fpsmin))
      {
         fpsmin = fpsinstant;
      }
      if((0 < fpsmax) || (fpsinstant > fpsmax))
      {
         fpsmax = fpsinstant;
      }

      //printf("\n");
      // russ: a "frame" for fps calc is from both cameras
      printf("[%06d] fps := % 6.03f\n", frameidx, fpsinstant);

      if(3==numcams)
      {
         for(ii=0; ii<FRAME_X_Y; ++ii)
         {
            frametripnormloc1 = (uchar*)(frametripnorm->imageData + (ii*frametripnorm->widthStep));
            frametripnormloc2 = (uchar*)( frametripnorm->imageData
                                          + (ii*frametripnorm->widthStep)
                                          + (frametripnorm->widthStep/3) );
            frametripnormloc3 = (uchar*)( frametripnorm->imageData
                                          + (ii*frametripnorm->widthStep)
                                          + 2*(frametripnorm->widthStep/3) );
            for(jj=0; jj<FRAME_X_Y; ++jj)
            {
               frametripnormloc1[jj]=(unsigned char)indat[0*FRAME_X_Y*2 + ii*FRAME_X_Y+jj];
               frametripnormloc2[jj]=(unsigned char)indat[1*FRAME_X_Y*2 + ii*FRAME_X_Y+jj];
               frametripnormloc3[jj]=(unsigned char)indat[2*FRAME_X_Y*2 + ii*FRAME_X_Y+jj];
            }
         }
         // create scaled up image
         cvResize(frametripnorm,frametripscaledup,CV_INTER_LINEAR);
      }
      else if(2==numcams)
      {
         for(ii=0; ii<FRAME_X_Y; ++ii)
         {
            framedoublenormloc1 = (uchar*)(framedoublenorm->imageData + (ii*framedoublenorm->widthStep));
            framedoublenormloc2 = (uchar*)( framedoublenorm->imageData
                                          + (ii*framedoublenorm->widthStep)
                                          + (framedoublenorm->widthStep/2) );
            for(jj=0; jj<FRAME_X_Y; ++jj)
            {
               framedoublenormloc1[jj]=(unsigned char)indat[0*FRAME_X_Y*2 + ii*FRAME_X_Y+jj];
               framedoublenormloc2[jj]=(unsigned char)indat[1*FRAME_X_Y*2 + ii*FRAME_X_Y+jj];
            }
         }
         // create scaled up image
         cvResize(framedoublenorm,framedoublescaledup,CV_INTER_LINEAR);
      }
      else
      {
         assert(1==numcams);
         // not actually implemented!
      }

#if 0
      // find max and min pixel values for normalization
      // TODO: should be a function?
      framevalmin = 255;
      framevalmax = 0;
      frame2valmin = 255;
      frame2valmax = 0;
      frame3valmin = 255;
      frame3valmax = 0;
      for(ii = 0; ii < FRAME_X_Y; ++ii)
      {
         frameloc = (uchar*)(frame->imageData + (ii*frame->widthStep));
         if(2 <= numcams)
         {
            frame2loc = (uchar*)(frame2->imageData + (ii*frame2->widthStep));
         }
         if(3 <= numcams)
         {
            frame3loc = (uchar*)(frame3->imageData + (ii*frame3->widthStep));
         }
         for(jj = 0; jj < FRAME_X_Y; ++jj)
         {
            if(framevalmin > (unsigned char)indat[((numcams*ii)*FRAME_X_Y)+jj])
            {
               framevalmin = (unsigned char)indat[((numcams*ii)*FRAME_X_Y)+jj];
            }
            if(framevalmax < (unsigned char)indat[((numcams*ii)*FRAME_X_Y)+jj])
            {
               framevalmax = (unsigned char)indat[((numcams*ii)*FRAME_X_Y)+jj];
            }
            frameloc[jj] = (unsigned char)indat[((numcams*ii)*FRAME_X_Y)+jj];
            if(2 <= numcams)
            {
               if(frame2valmin > (unsigned char)indat[((numcams*ii+1)*FRAME_X_Y)+jj])
               {
                  frame2valmin = (unsigned char)indat[((numcams*ii+1)*FRAME_X_Y)+jj];
               }
               if(frame2valmax < (unsigned char)indat[((numcams*ii+1)*FRAME_X_Y)+jj])
               {
                  frame2valmax = (unsigned char)indat[((numcams*ii+1)*FRAME_X_Y)+jj];
               }
               frame2loc[jj] = (unsigned char)indat[((numcams*ii+1)*FRAME_X_Y)+jj];
            }
            if(3 <= numcams)
            {
               if(frame3valmin > (unsigned char)indat[((numcams*ii+1)*FRAME_X_Y)+jj])
               {
                  frame3valmin = (unsigned char)indat[((numcams*ii+1)*FRAME_X_Y)+jj];
               }
               if(frame3valmax < (unsigned char)indat[((numcams*ii+1)*FRAME_X_Y)+jj])
               {
                  frame3valmax = (unsigned char)indat[((numcams*ii+1)*FRAME_X_Y)+jj];
               }
               frame3loc[jj] = (unsigned char)indat[((numcams*ii+1)*FRAME_X_Y)+jj];
            }
         }
      }


      // normalize and scale-up for display on screen
      // russ: this is pretty much a total hack!
      if(0 != gFlagRawMode)
      {
         framevalmin = 0;
         framevalmax = 255;
         if(2 <= numcams)
         {
            frame2valmin = 0;
            frame2valmax = 255;
         }
         if(2 <= numcams)
         {
            frame3valmin = 0;
            frame3valmax = 255;
         }
      }
      // TODO: should be function(s)?
      for(ii = 0; ii < FRAME_X_Y; ++ii)
      {
         frameloc = (uchar*)(frame->imageData + (ii*frame->widthStep));
         framenormloc = (uchar*)(framenorm->imageData + (ii*framenorm->widthStep));
         if(2 == numcams)
         {
            frame2loc = (uchar*)(frame2->imageData + (ii*frame2->widthStep));
            frame2normloc = (uchar*)(frame2norm->imageData + (ii*frame2norm->widthStep));
            frametripnormloc1 = (uchar*)(frametripnorm->imageData + (ii*frametripnorm->widthStep));
            frametripnormloc2 = (uchar*)( frametripnorm->imageData
                                          + (ii*frametripnorm->widthStep)
                                          + (frametripnorm->widthStep/2) );
         }
         for(jj = 0; jj < FRAME_X_Y; ++jj)
         {
            framenormloc[jj] = (uchar)((frameloc[jj]-framevalmin)*(255.0/framevalmax));
            if(2 == numcams)
            {
               frame2normloc[jj] = (uchar)((frame2loc[jj]-frame2valmin)*(255.0/frame2valmax));
               frametripnormloc1[jj] = (uchar)((frameloc[jj]-framevalmin)*(255.0/framevalmax));
               frametripnormloc2[jj] = (uchar)((frame2loc[jj]-frame2valmin)*(255.0/frame2valmax));
            }

            for(xx=0; xx<SCALINGVAL; ++xx)
            {
               framescaleduploc
                  = (uchar*)( framescaledup->imageData
                              + (((ii*SCALINGVAL)+xx)*framescaledup->widthStep) );
               if(2 == numcams)
               {
                  frame2scaleduploc
                     = (uchar*)( frame2scaledup->imageData
                                 + (((ii*SCALINGVAL)+xx)*frame2scaledup->widthStep) );
                  // double wide
                  frametripscaleduploc1
                     = (uchar*)( frametripscaledup->imageData
                                 + (((ii*SCALINGVAL)+xx)*frametripscaledup->widthStep) );
                  frametripscaleduploc2 
                     = (uchar*)( frametripscaledup->imageData
                                 + (((ii*SCALINGVAL)+xx)*frametripscaledup->widthStep)
                                 + (frametripscaledup->widthStep/2) );
               }
               for(yy=0; yy<SCALINGVAL; ++yy)
               {
                  framescaleduploc[(jj*SCALINGVAL)+yy]
                     = (uchar)((frameloc[jj]-framevalmin)*(255.0/framevalmax));
                  if(2 == numcams)
                  {
                     frame2scaleduploc[(jj*SCALINGVAL)+yy]
                        = (uchar)((frame2loc[jj]-frame2valmin)*(255.0/frame2valmax));
                     // double wide
                     frametripscaleduploc1[(jj*SCALINGVAL)+yy]
                        = (uchar)((frameloc[jj]-framevalmin)*(255.0/framevalmax));
                     frametripscaleduploc2[(jj*SCALINGVAL)+yy]
                        = (uchar)((frame2loc[jj]-frame2valmin)*(255.0/frame2valmax));
                  }
               }
            }
         }
      }


      if(0 != gFlagDrawGrid)
      {
         // FIXME only works with 2 cameras!
         assert(2 == numcams);
         cvCvtColor(framedualscaledup, gridoverlay, CV_GRAY2RGB);
         cvLine( gridoverlay,
                 cvPoint((0+FRAME_X_Y)*SCALINGVAL,(FRAME_X_Y/3)*SCALINGVAL),
                 cvPoint((FRAME_X_Y+FRAME_X_Y)*SCALINGVAL,(FRAME_X_Y/3)*SCALINGVAL),
                 CV_RGB(255,0,0),1,8,0 );
         cvLine( gridoverlay,
                 cvPoint((0+FRAME_X_Y)*SCALINGVAL,(2*FRAME_X_Y/3)*SCALINGVAL),
                 cvPoint((FRAME_X_Y+FRAME_X_Y)*SCALINGVAL,(2*FRAME_X_Y/3)*SCALINGVAL),
                 CV_RGB(255,0,0),1,8,0 );
         cvLine( gridoverlay,
                 cvPoint((FRAME_X_Y/3+FRAME_X_Y)*SCALINGVAL,0*SCALINGVAL),
                 cvPoint((FRAME_X_Y/3+FRAME_X_Y)*SCALINGVAL,FRAME_X_Y*SCALINGVAL),
                 CV_RGB(255,0,0),1,8,0 );
         cvLine( gridoverlay,
                 cvPoint((2*FRAME_X_Y/3+FRAME_X_Y)*SCALINGVAL,0*SCALINGVAL),
                 cvPoint((2*FRAME_X_Y/3+FRAME_X_Y)*SCALINGVAL,FRAME_X_Y*SCALINGVAL),
                 CV_RGB(255,0,0),1,8,0 );
         cvShowImage("CamCapDoubleWide", gridoverlay);
      }
      else
#endif // 0
      {
         // display picture on screen
         if(3==numcams)
         {
            cvShowImage("CamCapTripleWide", frametripscaledup);
            cvShowImage("CamCapTripleWideSmall", frametripnorm);
         }
         else if(2==numcams)
         {
            cvShowImage("CamCapDoubleWide", framedoublescaledup);
            cvShowImage("CamCapDoubleWideSmall", framedoublenorm);
         }
         else
         {
            cvShowImage("CamCap", framescaledup);
            cvShowImage("CamCapSmall", framenorm);
         }
      }


      // save the frame as a BMP file
      // TODO: should be a function?
      // TODO: save as video instead
      if(0 == gFlagNoWriteVideo)
      {
         snprintf( outfilenameframe,2*OUTPATH_MAX_LEN,"%s/%s_%06d.bmp",gOutpath,
                   outfilenameprefix,frameidx );
         fprintf(gOutfilefps,"[%06d] fps := % 6.03f\n", frameidx, fpsinstant);

         if(3 == numcams)
         {
            (void)cvSaveImage(outfilenameframe,frametripnorm,0);
         }
         if(2 == numcams)
         {
            (void)cvSaveImage(outfilenameframe,framedoublenorm,0);
         }
         else
         {
            (void)cvSaveImage(outfilenameframe,framenorm,0);
         }
      }

      ++frameidx;


      // let the user kill the program with ESC
      // there is a tradeoff here: longer is better for step mode, shorter better for stream mode.
      // the choice of 9 ms delay means this program can't do much faster than ~110 fps
      cc = cvWaitKey(9);
      // look for ESC key
      if(KEY_QUIT == cc)
      {
         break;
      }
   }


   // release/destroy OpenCV objects
   cvReleaseImage(&frame);
   cvReleaseImage(&framenorm);
   cvReleaseImage(&framescaledup);
   cvReleaseImage(&frame2);
   cvReleaseImage(&frame2norm);
   cvReleaseImage(&frame2scaledup);
   cvReleaseImage(&frame3);
   cvReleaseImage(&frame3norm);
   cvReleaseImage(&frame3scaledup);
   cvReleaseImage(&framedoublenorm);
   cvReleaseImage(&framedoublescaledup);
   cvReleaseImage(&frametripnorm);
   cvReleaseImage(&frametripscaledup);
   if(3 == numcams)
   {
      cvDestroyWindow("CamCapTripleWide");
      cvDestroyWindow("CamCapTripleWideSmall");
   }
   else if(2 == numcams)
   {
      cvDestroyWindow("CamCapDoubleWide");
      cvDestroyWindow("CamCapDoubleWideSmall");
   }
   else
   {
      cvDestroyWindow("CamCap");
      cvDestroyWindow("CamCapSmall");
   }


   // close files
   if(0 == gFlagNoWriteVideo)
   {
      fclose(gOutfilefps);
   }
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

   fprintf(stderr, "Usage: %s [-o PATH|-q]\n", progname);
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
   fprintf(stderr,"  -g         draw 3x3 grid lines\n");
   fprintf(stderr,"  -h         show help and exit\n");
   fprintf(stderr,"  -o PATH    save video to PATH.  PATH cannot already exist.  incompatible with -q\n");
   fprintf(stderr,"  -q         quiet mode.  won't write out any video.  incompatible with -o\n");
   fprintf(stderr,"  -r         raw mode.  won't normalize the picture\n");
}

//
// parseargs: parse cli
//
static int parseargs(int argc, char **argv)
{
   char cc;
   extern char *optarg;

   errno=0;

   while ((cc = getopt(argc, argv, "gho:qr")) != EOF)
   {
      switch (cc) {
         case 'g':
            gFlagDrawGrid = 1;
            break;
         case 'h':
            gFlagUserCliValid = 1;
            gFlagUserCliHelp = 1;
            break;
         case 'o':
            if(1 == gFlagUserCliModeSelected)
            {
               fprintf(stderr,"ERROR: can't specify quiet mode and an output path!\n");
               gFlagUserCliValid=0;
               // FIXME: is this the right errno?
               errno=E2BIG;
               break;
            }
            if(OUTPATH_MAX_LEN < strlen(optarg))
            {
               fprintf(stderr,"ERROR: path too long!\n");
               errno=ENAMETOOLONG;
               break;
            }
            gFlagUserCliValid = 1;
            gFlagNoWriteVideo = 0;
            gFlagUserCliModeSelected = 1;
            strncpy(gOutpath, optarg, OUTPATH_MAX_LEN);
            gOutpath[strlen(optarg)] = '\0';
            break;
         case 'q':
            if(1 == gFlagUserCliModeSelected)
            {
               fprintf(stderr,"ERROR: can't specify quiet mode and an output path!\n");
               gFlagUserCliValid=0;
               // FIXME: is this the right errno?
               errno=E2BIG;
               break;
            }
            gFlagUserCliValid = 1;
            gFlagNoWriteVideo = 1;
            gFlagUserCliModeSelected = 1;
            break;
         case 'r':
            gFlagRawMode = 1;
            break;
         default:
            errno=EINVAL;
            break;
      }
   }

   return(errno);
}

//
// terminate: signal handler to cleanup the camera connection and exit
//
static void terminate(int xx)
{
   fclose(gOutfilefps);
   // TODO: perhaps we shouldn't ALWAYS exit with 0
   exit(0);
}

