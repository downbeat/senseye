//**************************************************************************************************
// captureStreamDual.c
//
// Russ Bielawski
// 2012-10-29
//**************************************************************************************************


//**************************************************************************************************
// includes
//
#include <stdio.h>
//#include <termios.h>
#include <errno.h>
#include <time.h>
#include <signal.h>

// opencv sources
#include "cv.h"
#include "highgui.h"


//**************************************************************************************************
// defines / constants
//
enum
{
   OPCODE_START_CAPTURE = 0x01,
   OPCODE_STOP_CAPTURE  = 0x02,
   OPCODE_SINGLE_FRAME  = 0x04,
   OPCODE_START_ACK     = 0x81,
   OPCODE_STOP_ACK      = 0x82,
   OPCODE_FRAME         = 0x84
};

#define MATGRAB_FILE  ("image.m")
#define FRAME_X_Y     (112)
#define FRAME_LEN     (FRAME_X_Y*FRAME_X_Y)
#define SCALINGVAL    (4)
#define ESC_KEY       (27)


//**************************************************************************************************
// globals
//
FILE *gCamin,*gCamout;


//**************************************************************************************************
// local function prototypes
//
static void cleanupCamConn(/*dummy for catching signals*/int x);
//static char getch();


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

   IplImage *frame, *framenorm, *framescaledup;
   uchar *frameloc, *framenormloc, *framescaleduploc;
   uchar framevalmin, framevalmax;
   IplImage *frame2, *frame2norm, *frame2scaledup;
   uchar *frame2loc, *frame2normloc, *frame2scaleduploc;
   uchar frame2valmin, frame2valmax;

   // double wide!
   IplImage *framedualnorm, *framedualscaledup;
   uchar *framedualnormloc1, *framedualnormloc2, *framedualscaleduploc1, *framedualscaleduploc2;

   clock_t clkvalprevious, clkval;
   double fpsinstant;
   double fpsmin;
   double fpsmax;

   const char picoutdirectory[] = "./samples/";
   char picoutprefix[50];
   unsigned int picoutidx;
   const char picoutsuffix[] = ".bmp";
   char picoutfilename[255];
   const char picoutattrssuffix[] = "_attrs.txt";
   char picoutattrsfilename[255];

   FILE* picoutattrsfile;

   CvVideoWriter *vidout;

   snprintf(picoutprefix,50,"%d",(unsigned int)time(0));
   picoutidx=0;

   fprintf(stderr,"video file: %s\n",picoutprefix);
   snprintf( picoutattrsfilename,255,"%s/%s%s",picoutdirectory,
             picoutprefix,picoutattrssuffix );

   // russ: this is a little inelegant
   gCamin = fopen("/dev/ttyACM0","r");
   if(0 == gCamin)
   {
      fprintf(stderr, "Could not open /dev/ttyACM0 for reading; trying /dev/ttyACM1\n");
      gCamin = fopen("/dev/ttyACM1", "r");
      if(0 == gCamin)
      {
         fprintf(stderr, "Could not open /dev/ttyACM1 for reading\n");
         return -1;
      }
      gCamout = fopen("/dev/ttyACM1","w");
      if(0 == gCamout)
      {
         fprintf(stderr, "Could not open /dev/ttyACM1 for writing\n");
         fclose(gCamin);
         return -1;
      }
   }
   else
   {
      gCamout = fopen("/dev/ttyACM0","w");
      if(0 == gCamout)
      {
         fprintf(stderr, "Could not open /dev/ttyACM0 for writing\n");
         fclose(gCamin);
         return -1;
      }
   }

   picoutattrsfile = fopen(picoutattrsfilename,"w");
   if(0 == picoutattrsfile)
   {
      fprintf(stderr, "Could not open %s for writing capture attrs\n",picoutattrsfilename);
      fclose(picoutattrsfile);
      fclose(gCamin);
      fclose(gCamout);
      return -1;
   }
   /* TODO russ: can't get writing video to work yet!
   fprintf(stderr,"%s\n",vidoutname);
   vidout = cvCreateVideoWriter( vidoutname,
                                 CV_FOURCC('F','M','P','4'),
                                 10, // placehold FPS
                                 cvSize(FRAME_X_Y,FRAME_X_Y),
                                 0 );
   assert(vidout);*/


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

   clkvalprevious = clkval = -1;
   fpsinstant = fpsmin = fpsmax = -1;

   fputc((char)OPCODE_START_CAPTURE,gCamout);
//   fputc((char)'A',gCamout);
   fflush(gCamout);

//   cc = (char)fgetc(gCamin);
//   (void)fgets(indat,3,gCamin);

   //fprintf(stderr,"tx: 0x%02X\n", (unsigned char)OPCODE_START_CAPTURE);
   do
   {
      readcnt = fread(indat,1,1,gCamin);
      //fprintf(stderr,"rx: 0x%02X\n", (unsigned char)indat[0]);
   } while(OPCODE_START_ACK != (unsigned char)indat[0]);
   if(OPCODE_START_ACK != (unsigned char)indat[0])
   {
      cleanupCamConn(/*dummy*/xx);
      assert(OPCODE_START_ACK == (unsigned char)indat[0]);
   }

   // we want to gracefully close the remove device connection
   signal(SIGHUP, cleanupCamConn);
   signal(SIGINT, cleanupCamConn);
   signal(SIGABRT, cleanupCamConn);
   signal(SIGQUIT, cleanupCamConn);
   signal(SIGTERM, cleanupCamConn);
   signal(SIGSEGV, cleanupCamConn);

   // what is this!?
   //cvShowImage("CamCap", framenorm);

   while(1)
   {
      do {
         readcnt = fread(indat,1,1,gCamin);
         //fprintf(stderr,"rx: 0x%02X\n", (unsigned char)indat[0]);
      } while(1 > readcnt);
      if(OPCODE_FRAME != (unsigned char)indat[0])
      {
         cleanupCamConn(/*dummy*/xx);
         assert(OPCODE_FRAME == (unsigned char)indat[0]);
      }

      totallen=0;
      indatloc=indat;
      while(FRAME_LEN*2 > totallen)
      {
         readcnt = fread(indatloc,1,(FRAME_LEN*2)-totallen,gCamin);
         totallen+=readcnt;
         indatloc+=readcnt;
      }
      *indatloc = '\0';
      clkvalprevious = clkval;
      clkval = clock();
      fpsinstant = ((double)CLOCKS_PER_SEC)/(clkval-clkvalprevious);
      if((0 < fpsmin) || (fpsinstant < fpsmin))
      {
         fpsmin = fpsinstant;
      }
      if((0 < fpsmax) || (fpsinstant > fpsmax))
      {
         fpsmax = fpsinstant;
      }

      // FIXME russ asdfasdf
      //fprintf(stderr,"%d\n",(int)time(0));

      framevalmin = 255;
      framevalmax = 0;

      //printf("tx: 0x%02X\n", OPCODE_SINGLE_FRAME);
      //printf("rx len: %d\n", totallen);
      //printf("rx 0x%02X ",(unsigned char)indat[0]);
      for(ii = 0; ii < FRAME_X_Y; ++ii)
      {
         frameloc = (uchar*)(frame->imageData + (ii*frame->widthStep));
         frame2loc = (uchar*)(frame2->imageData + (ii*frame2->widthStep));
         for(jj = 0; jj < FRAME_X_Y; ++jj)
         {
            if(framevalmin > (unsigned char)indat[((2*ii)*FRAME_X_Y)+jj])
            {
               framevalmin = (unsigned char)indat[((2*ii)*FRAME_X_Y)+jj];
            }
            if(framevalmax < (unsigned char)indat[((2*ii)*FRAME_X_Y)+jj])
            {
               framevalmax = (unsigned char)indat[((2*ii)*FRAME_X_Y)+jj];
            }
            if(frame2valmin > (unsigned char)indat[((2*ii+1)*FRAME_X_Y)+jj])
            {
               frame2valmin = (unsigned char)indat[((2*ii+1)*FRAME_X_Y)+jj];
            }
            if(frame2valmax < (unsigned char)indat[((2*ii+1)*FRAME_X_Y)+jj])
            {
               frame2valmax = (unsigned char)indat[((2*ii+1)*FRAME_X_Y)+jj];
            }
            frameloc[jj] = (unsigned char)indat[((2*ii)*FRAME_X_Y)+jj];
            frame2loc[jj] = (unsigned char)indat[((2*ii+1)*FRAME_X_Y)+jj];
            //printf("%02X ", (unsigned char)indat[(FRAME_X_Y*ii)+jj]);
         }
      }
      //printf("\n");
      // russ: this is not doubled because a "frame" for fps calc is from both cameras
      fprintf(stderr,"[frame rx'd] fps := % 6.03f\n", fpsinstant);

      for(ii = 0; ii < FRAME_X_Y; ++ii)
      {
         frameloc = (uchar*)(frame->imageData + (ii*frame->widthStep));
         framenormloc = (uchar*)(framenorm->imageData + (ii*framenorm->widthStep));
         frame2loc = (uchar*)(frame2->imageData + (ii*frame2->widthStep));
         frame2normloc = (uchar*)(frame2norm->imageData + (ii*frame2norm->widthStep));
         framedualnormloc1 = (uchar*)(framedualnorm->imageData + (ii*framedualnorm->widthStep));
         framedualnormloc2 = (uchar*)( framedualnorm->imageData
                                       + (ii*framedualnorm->widthStep)
                                       + (framedualnorm->widthStep/2) );
         for(jj = 0; jj < FRAME_X_Y; ++jj)
         {
            framenormloc[jj] = (uchar)((frameloc[jj]-framevalmin)*(255.0/framevalmax));
            frame2normloc[jj] = (uchar)((frame2loc[jj]-framevalmin)*(255.0/frame2valmax));
            framedualnormloc1[jj] = (uchar)((frameloc[jj]-framevalmin)*(255.0/framevalmax));
            framedualnormloc2[jj] = (uchar)((frame2loc[jj]-framevalmin)*(255.0/frame2valmax));

            for(xx=0; xx<SCALINGVAL; ++xx)
            {
               framescaleduploc
                  = (uchar*)( framescaledup->imageData
                              + (((ii*SCALINGVAL)+xx)*framescaledup->widthStep) );
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
               for(yy=0; yy<SCALINGVAL; ++yy)
               {
                  framescaleduploc[(jj*SCALINGVAL)+yy]
                     = (uchar)((frameloc[jj]-framevalmin)*(255.0/framevalmax));
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

      /* FIXME russ: only displaying double wides now
      cvShowImage("CamCap", framescaledup);
      cvShowImage("CamCapSmall", framenorm);
      cvShowImage("Cam2Cap", frame2scaledup);
      cvShowImage("Cam2CapSmall", frame2norm);*/
      cvShowImage("CamCapDoubleWide", framedualscaledup);
      cvShowImage("CamCapDoubleWideSmall", framedualnorm);

      snprintf( picoutfilename,255,"%s/%s_%06d%s",picoutdirectory,
                picoutprefix,picoutidx,picoutsuffix );
      fprintf(picoutattrsfile,"[%06d] fps := % 6.03f\n", picoutidx, fpsinstant);
      ++picoutidx;

      (void)cvSaveImage(picoutfilename,framedualnorm,0);

      // look for ESC key
      cc = cvWaitKey(1);
      if(ESC_KEY == cc)
      {
         break;
      }
   }

   fputc((char)OPCODE_STOP_CAPTURE,gCamout);
   fflush(gCamout);
   do
   {
      readcnt = fread(indat,1,1,gCamin);
   } while(OPCODE_STOP_ACK != (unsigned char)indat[0]);

   // do I need this?
   fflush(gCamin);

   cvReleaseImage(&frame);
   cvReleaseImage(&framenorm);
   cvReleaseImage(&framescaledup);
   cvReleaseImage(&frame2);
   cvReleaseImage(&frame2norm);
   cvReleaseImage(&frame2scaledup);
   cvReleaseImage(&framedualnorm);
   cvReleaseImage(&framedualscaledup);
   /* FIXME russ: only displaying double wides now
   cvDestroyWindow("CamCap");
   cvDestroyWindow("CamCapSmall");
   cvDestroyWindow("Cam2Cap");
   cvDestroyWindow("Cam2CapSmall");*/
   cvDestroyWindow("CamCapDoubleWide");
   cvDestroyWindow("CamCapDoubleWideSmall");

   fclose(picoutattrsfile);
   fclose(gCamin);
   fclose(gCamout);
   return 0;
}


//**************************************************************************************************
// local function definitions
//

//
// cleanupCamConn
//
static void cleanupCamConn(/*dummy for catching signals*/int x)
{
   fputc((char)OPCODE_STOP_CAPTURE,gCamout);
   fflush(gCamout);
}

//
// getch
//
// russ: taken from http://stackoverflow.com/questions/421860/c-c-capture-characters-from-standard-input-without-waiting-for-enter-to-be-pr
// ! LINUX ONLY (sorry, lazy)
/*static char getch() {
   char buf = 0;
   struct termios old = {0};
   if (tcgetattr(0, &old) < 0)
      perror("tcsetattr()");
   old.c_lflag &= ~ICANON;
   old.c_lflag &= ~ECHO;
   old.c_cc[VMIN] = 1;
   old.c_cc[VTIME] = 0;
   if (tcsetattr(0, TCSANOW, &old) < 0)
      perror("tcsetattr ICANON");
   if (read(0, &buf, 1) < 0)
      perror ("read()");
   old.c_lflag |= ICANON;
   old.c_lflag |= ECHO;
   if (tcsetattr(0, TCSADRAIN, &old) < 0)
      perror ("tcsetattr ~ICANON");
   return (buf);
}*/

