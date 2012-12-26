//**************************************************************************************************
// frontdisplayandsave.c
//
// Russ Bielawski
// 2012-11-13: created
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
#define OUTPATH_MAX_LEN         (PATH_MAX_LEN)
// russ: unsure which is best to use (or what values)
#define ED_THRESH_ABS           (165)
#define ED_THRESH_REL           (1)

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

   // double wide!
   IplImage *framedualnorm, *framedualscaledup;
   uchar *framedualnormloc1, *framedualnormloc2, *framedualscaleduploc1, *framedualscaleduploc2;

   // eye detect!
   IplImage *inverted, *threshed, *circles, *disco;
   CvMemStorage* houghstorage;
   CvSeq *houghres;
   float *cir;


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
      signal(SIGPIPE, terminate);
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
   framedualnorm = cvCreateImage(cvSize(FRAME_X_Y*2,FRAME_X_Y), IPL_DEPTH_8U, 1);
   framedualscaledup = cvCreateImage(cvSize( FRAME_X_Y*SCALINGVAL*2,
                                             FRAME_X_Y*SCALINGVAL ), IPL_DEPTH_8U, 1);
   inverted = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   threshed = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   circles = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 3);
   disco = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 3);
   // russ: unsure what this is even used for!
   houghstorage = cvCreateMemStorage(0);

   // appease the compiler
   frame2loc = frame2normloc = frame2scaleduploc = 0;
   framedualnormloc1 = framedualnormloc2 = framedualscaleduploc1 = framedualscaleduploc2 = 0;


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


      // find max and min pixel values for normalization
      // TODO: should be a function?
      framevalmin = 255;
      framevalmax = 0;
      frame2valmin = 255;
      frame2valmax = 0;
      for(ii = 0; ii < FRAME_X_Y; ++ii)
      {
         frameloc = (uchar*)(frame->imageData + (ii*frame->widthStep));
         if(2 == numcams)
         {
            frame2loc = (uchar*)(frame2->imageData + (ii*frame2->widthStep));
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
            if(2 == numcams)
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
         }
      }
      //printf("\n");
      // russ: a "frame" for fps calc is from both cameras
      printf("[frame rx'd] fps := % 6.03f\n", fpsinstant);


      // normalize and scale-up for display on screen
      // russ: this is pretty much a total hack!
      if(0 != gFlagRawMode)
      {
         framevalmin = 0;
         framevalmax = 255;
         if(2 == numcams)
         {
            frame2valmin = 0;
            frame2valmax = 255;
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
            framedualnormloc1 = (uchar*)(framedualnorm->imageData + (ii*framedualnorm->widthStep));
            framedualnormloc2 = (uchar*)( framedualnorm->imageData
                                          + (ii*framedualnorm->widthStep)
                                          + (framedualnorm->widthStep/2) );
         }
         for(jj = 0; jj < FRAME_X_Y; ++jj)
         {
            framenormloc[jj] = (uchar)((frameloc[jj]-framevalmin)*(255.0/framevalmax));
            if(2 == numcams)
            {
               frame2normloc[jj] = (uchar)((frame2loc[jj]-frame2valmin)*(255.0/frame2valmax));
               framedualnormloc1[jj] = (uchar)((frameloc[jj]-framevalmin)*(255.0/framevalmax));
               framedualnormloc2[jj] = (uchar)((frame2loc[jj]-frame2valmin)*(255.0/frame2valmax));
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
                  framedualscaleduploc1
                     = (uchar*)( framedualscaledup->imageData
                                 + (((ii*SCALINGVAL)+xx)*framedualscaledup->widthStep) );
                  framedualscaleduploc2 
                     = (uchar*)( framedualscaledup->imageData
                                 + (((ii*SCALINGVAL)+xx)*framedualscaledup->widthStep)
                                 + (framedualscaledup->widthStep/2) );
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
                     framedualscaleduploc1[(jj*SCALINGVAL)+yy]
                        = (uchar)((frameloc[jj]-framevalmin)*(255.0/framevalmax));
                     framedualscaleduploc2[(jj*SCALINGVAL)+yy]
                        = (uchar)((frame2loc[jj]-frame2valmin)*(255.0/frame2valmax));
                  }
               }
            }
         }
      }

      // eye detection
      cvSmooth(framenorm, framenorm, CV_GAUSSIAN, 5, 5, 0, 0);
      cvNot(framenorm, inverted);
      for(ii=100; ii<250; ii+=4)
      {
         cvEqualizeHist(inverted, inverted);
         cvThreshold(inverted, threshed, ii, 255, CV_THRESH_BINARY_INV);
         houghres = cvHoughCircles( threshed, houghstorage, CV_HOUGH_GRADIENT,
                                    4, 1, 160, 80, threshed->width/8, threshed->width/3);
         cvCvtColor(threshed, circles, CV_GRAY2RGB);
         cvCvtColor(framenorm, disco, CV_GRAY2RGB);
         for(jj=0; jj<houghres->total; ++jj)
         {
            cir = (float*)cvGetSeqElem(houghres,jj);
            cvCircle( circles,
                      cvPoint(cvRound(cir[0]),cvRound(cir[1])),
                      cvRound(cir[2]), CV_RGB(255,0,0), 2, 8, 0);
            cvCircle( disco,
                      cvPoint(cvRound(cir[0]),cvRound(cir[1])),
                      1, CV_RGB(0,255,0), 4, 8, 0);
         }
         //(void)cvWaitKey(0);
         cvShowImage("EyeDetectCandidate", circles);
         if(1 == houghres->total)
         {
            break;
         }
      }
      cvShowImage("EyeDetect", disco);
      //(void)cvWaitKey(0);
#if 0
      // eye detection
      cvSmooth(framenorm, framenorm, CV_GAUSSIAN, 5, 5, 0, 0);
      // hijacking the framenorm variable
      /*cvNot(framenorm, inverted);
      cvEqualizeHist(inverted, inverted);
      cvThreshold(inverted, threshed, 155, 255, CV_THRESH_BINARY_INV);*/
      cvThreshold(framenorm, threshed, 0, 255, CV_THRESH_OTSU);
      //cvThreshold(framenorm, threshed, 0, 255, CV_THRESH_OTSU);
      //cvThreshold(inverted, threshed, (unsigned)(ED_THRESH_REL*edframevalmax), 255, CV_THRESH_BINARY_INV);
      //cvThreshold(inverted, threshed, (unsigned)(ED_THRESH_REL*edframevalmin), 255, CV_THRESH_BINARY_INV);
      //cvThreshold(inverted, threshed, (unsigned)(0.9*edframevalmin), 255, CV_THRESH_BINARY_INV);

      // hough circle detection
      houghres = cvHoughCircles( threshed, houghstorage, CV_HOUGH_GRADIENT,
                                 0.5, 1, 160, 80, threshed->width/10, threshed->width/2);
      //houghres = cvHoughCircles( threshed, houghstorage, CV_HOUGH_GRADIENT,
      //                           1, 1, 200, 100, threshed->width/10, threshed->width/2);
      cvCvtColor(threshed, circles, CV_GRAY2RGB);
      for(ii=0; ii<houghres->total; ++ii)
      {
         cir = (float*)cvGetSeqElem(houghres,ii);
         cvCircle( circles,
                   cvPoint(cvRound(cir[0]),cvRound(cir[1])),
                   cvRound(cir[2]), CV_RGB(255,0,0), 2, 8, 0);
      }

      /* FIXME russ: asdfasdf
      // just hijack theise variables for my needs
      for(ii = 0; ii < FRAME_X_Y; ++ii)
      {
         frameloc = (uchar*)(frame->imageData + (ii*frame->widthStep));
         framenormloc = (uchar*)(framenorm->imageData + (ii*framenorm->widthStep));
         if(2 == numcams)
         {
            frame2loc = (uchar*)(frame2->imageData + (ii*frame2->widthStep));
            frame2normloc = (uchar*)(frame2norm->imageData + (ii*frame2norm->widthStep));
            framedualnormloc1 = (uchar*)(framedualnorm->imageData + (ii*framedualnorm->widthStep));
            framedualnormloc2 = (uchar*)( framedualnorm->imageData
                                          + (ii*framedualnorm->widthStep)
                                          + (framedualnorm->widthStep/2) );
         }
         for(jj = 0; jj < FRAME_X_Y; ++jj)
         {
            framenormloc[jj] = (uchar)((frameloc[jj]-framevalmin)*(255.0/framevalmax));
         }
      }*/
      //cvShowImage("EyeDetect", threshed);
      cvShowImage("EyeDetect", circles);
#endif /* 0 */


      // save the frame as a BMP file
      // TODO: should be a function?
      // TODO: save as video instead
      if(0 == gFlagNoWriteVideo)
      {
         snprintf( outfilenameframe,2*OUTPATH_MAX_LEN,"%s/%s_%06d.bmp",gOutpath,
                   outfilenameprefix,frameidx );
         fprintf(gOutfilefps,"[%06d] fps := % 6.03f\n", frameidx, fpsinstant);

         (void)cvSaveImage(outfilenameframe,disco,0);
         /*if(2 == numcams)
         {
            (void)cvSaveImage(outfilenameframe,framedualnorm,0);
         }
         else
         {
            (void)cvSaveImage(outfilenameframe,framenorm,0);
         }*/
      }

      ++frameidx;


      // let the user kill the program with 'q'
      // there is a tradeoff here: longer is better for step mode, shorter better for stream mode.
      // the choice of 9 ms delay means this program can't do much faster than ~110 fps
      cc = cvWaitKey(9);
      // look for quit key
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
   cvReleaseImage(&framedualnorm);
   cvReleaseImage(&framedualscaledup);
   cvReleaseImage(&inverted);
   cvReleaseImage(&threshed);
   cvReleaseImage(&circles);
   cvDestroyWindow("EyeDetect");


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
   fprintf(stderr,"press 'q' to end the program (user must have context of the video window!).\n");
   fprintf(stderr,"\n");
   fprintf(stderr,"quick and dirty argument descriptions:\n");
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

   while ((cc = getopt(argc, argv, "ho:qr")) != EOF)
   {
      switch (cc) {
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

