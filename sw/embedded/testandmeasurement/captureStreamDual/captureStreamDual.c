// Russ Bielawski
// 2012-10-18

#include <stdio.h>
//#include <termios.h>
#include <errno.h>
#include <time.h>
// opencv sources
#include "cv.h"
#include "highgui.h"

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


// russ: taken from http://stackoverflow.com/questions/421860/c-c-capture-characters-from-standard-input-without-waiting-for-enter-to-be-pr
// ! LINUX ONLY (sorry, lazy)
/*char getch() {
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

int main(int argc, char** argv)
{
   int ii,jj,xx,yy;
   FILE *camin, *camout;
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
//IplImage *framedualnorm, *framedualscaledup;

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
   picoutattrsfile = fopen(picoutattrsfilename,"w");
   if(0 == picoutattrsfile)
   {
      fprintf(stderr, "Could not open %s for writing capture attrs\n",picoutattrsfilename);
      return -1;
   }
   //fprintf(stderr,"%s\n",vidoutname);

   // TODO russ: can't get writing video to work yet!
/*   vidout = cvCreateVideoWriter( vidoutname,
                                 CV_FOURCC('F','M','P','4'),
                                 10, // placehold FPS
                                 cvSize(FRAME_X_Y,FRAME_X_Y),
                                 0 );
   assert(vidout);
*/

   camin = fopen("/dev/ttyACM0","r");
   if(0 == camin)
   {
      fprintf(stderr, "Could not open /dev/ttyACM0 for reading\n");
      fclose(picoutattrsfile);
      return -1;
   }
   camout = fopen("/dev/ttyACM0","w");
   if(0 == camout)
   {
      fprintf(stderr, "Could not open /dev/ttyACM0 for writing\n");
      fclose(camin);
      fclose(picoutattrsfile);
      return -1;
   }


   // init our frame
   frame = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   framenorm = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   framescaledup = cvCreateImage( cvSize( FRAME_X_Y*SCALINGVAL,
                                          FRAME_X_Y*SCALINGVAL ),
                                  IPL_DEPTH_8U, 1 );
   frame2 = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   frame2norm = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   frame2scaledup = cvCreateImage( cvSize( FRAME_X_Y*SCALINGVAL,
                                           FRAME_X_Y*SCALINGVAL ),
                                   IPL_DEPTH_8U, 1 );

   clkvalprevious = clkval = -1;
   fpsinstant = fpsmin = fpsmax = -1;

   fputc((char)OPCODE_START_CAPTURE,camout);
//   fputc((char)'A',camout);
   fflush(camout);

//   cc = (char)fgetc(camin);
//   (void)fgets(indat,3,camin);

   //fprintf(stderr,"tx: 0x%02X\n", (unsigned char)OPCODE_START_CAPTURE);
   do
   {
      readcnt = fread(indat,1,1,camin);
      //fprintf(stderr,"rx: 0x%02X\n", (unsigned char)indat[0]);
   } while(OPCODE_START_ACK != (unsigned char)indat[0]);
   assert(OPCODE_START_ACK == (unsigned char)indat[0]);

   // what is this!?
   //cvShowImage("CamCap", framenorm);

   while(1)
   {
      do {
         readcnt = fread(indat,1,1,camin);
         //fprintf(stderr,"rx: 0x%02X\n", (unsigned char)indat[0]);
      } while(1 > readcnt);
      //assert(OPCODE_FRAME == (unsigned char)indat[0]);
      totallen=0;
      indatloc=indat;
      while(FRAME_LEN*2 > totallen)
      {
         readcnt = fread(indatloc,1,(FRAME_LEN*2)-totallen,camin);
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
         for(jj = 0; jj < FRAME_X_Y; ++jj)
         {
            framenormloc[jj] = (uchar)((frameloc[jj]-framevalmin)*(255.0/framevalmax));
            frame2normloc[jj] = (uchar)((frame2loc[jj]-framevalmin)*(255.0/frame2valmax));

            for(xx=0; xx<SCALINGVAL; ++xx)
            {
               framescaleduploc = (uchar*)( framescaledup->imageData +
                                            (((ii*SCALINGVAL)+xx)*framescaledup->widthStep) );
               frame2scaleduploc = (uchar*)( frame2scaledup->imageData +
                                             (((ii*SCALINGVAL)+xx)*frame2scaledup->widthStep) );
               for(yy=0; yy<SCALINGVAL; ++yy)
               {
                  framescaleduploc[(jj*SCALINGVAL)+yy]
                     = (uchar)((frameloc[jj]-framevalmin)*(255.0/framevalmax));
                  frame2scaleduploc[(jj*SCALINGVAL)+yy]
                     = (uchar)((frame2loc[jj]-frame2valmin)*(255.0/frame2valmax));
                  //((uchar*)(framescaledup->imageData + (((ii*SCALINGVAL)+xx)*frame->widthStep)))[(jj*SCALINGVAL)+yy] = 
                  //   (unsigned char)indat[(FRAME_X_Y*ii)+jj];
               }
            }
         }
      }

      cvShowImage("CamCap", framescaledup);
      cvShowImage("CamCapSmall", framenorm);
      cvShowImage("Cam2Cap", frame2scaledup);
      cvShowImage("Cam2CapSmall", frame2norm);

      snprintf( picoutfilename,255,"%s/%s_%06d%s",picoutdirectory,
                picoutprefix,picoutidx,picoutsuffix );
      fprintf(picoutattrsfile,"[%06d] fps := % 6.03f\n", picoutidx, fpsinstant);
      ++picoutidx;

      (void)cvSaveImage(picoutfilename,framenorm,0);

      // look for ESC key
      cc = cvWaitKey(1);
      if(27 == cc)
      {
         break;
      }
   }

   fputc((char)OPCODE_STOP_CAPTURE,camout);
   fflush(camout);
   do
   {
      readcnt = fread(indat,1,1,camin);
   } while(OPCODE_STOP_ACK != (unsigned char)indat[0]);

   // do I need this?
   fflush(camin);

   cvReleaseImage(&frame);
   cvReleaseImage(&framenorm);
   cvReleaseImage(&framescaledup);
   cvDestroyWindow("CamCap");
   cvDestroyWindow("CamCapSmall");
   cvReleaseImage(&frame2);
   cvReleaseImage(&frame2norm);
   cvReleaseImage(&frame2scaledup);
   cvDestroyWindow("Cam2Cap");
   cvDestroyWindow("Cam2CapSmall");

   fclose(picoutattrsfile);
   fclose(camin);
   fclose(camout);
   return 0;
}

