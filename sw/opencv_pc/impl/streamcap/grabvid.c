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

   clock_t clkvalprevious, clkval;
   double fpsinstant;

   char vidoutname[50];
   CvVideoWriter *vidout;

   snprintf(vidoutname,50,"%d.avi",(unsigned int)time(0));
   //fprintf(stderr,"%s\n",vidoutname);

   // FIXME russ: can't get writing video to work yet!
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
      return -1;
   }
   camout = fopen("/dev/ttyACM0","w");
   if(0 == camout)
   {
      fprintf(stderr, "Could not open /dev/ttyACM0 for writing\n");
      fclose(camin);
      return -1;
   }


   // init our frame
   frame = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   framenorm = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   framescaledup = cvCreateImage(cvSize(FRAME_X_Y*8,FRAME_X_Y*8), IPL_DEPTH_8U, 1);

   clkvalprevious = -1;
   clkval = -1;
   fpsinstant = -1;

   fputc((char)OPCODE_START_CAPTURE,camout);
//   fputc((char)'A',camout);
   fflush(camout);

//   cc = (char)fgetc(camin);
//   (void)fgets(indat,3,camin);

   do
   {
      readcnt = fread(indat,1,1,camin);
      //fprintf(stderr,"tx: 0x%02X\n", (unsigned char)OPCODE_START_CAPTURE);
      //fprintf(stderr,"rx: 0x%02X\n", (unsigned char)indat[0]);
   } while(OPCODE_START_ACK != (unsigned char)indat[0]);
   assert(OPCODE_START_ACK == (unsigned char)indat[0]);

   cvShowImage("CamCap", framenorm);

   while(1)
   {
      do {
         readcnt = fread(indat,1,1,camin);
         //fprintf(stderr,"tx: 0x%02X\n", (unsigned char)OPCODE_START_CAPTURE);
         //fprintf(stderr,"rx: 0x%02X\n", (unsigned char)indat[0]);
      } while(1 > readcnt);
      assert(OPCODE_FRAME == (unsigned char)indat[0]);
      totallen=0;
      indatloc=indat;
      while(FRAME_LEN > totallen)
      {
         readcnt = fread(indatloc,1,(FRAME_LEN)-totallen,camin);
         totallen+=readcnt;
         indatloc+=readcnt;
      }
      *indatloc = '\0';
      clkvalprevious = clkval;
      clkval = clock();
      fpsinstant = ((double)CLOCKS_PER_SEC)/(clkval-clkvalprevious);

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
         for(jj = 0; jj < FRAME_X_Y; ++jj)
         {
            if(framevalmin > (unsigned char)indat[(FRAME_X_Y*ii)+jj])
            {
               framevalmin = (unsigned char)indat[(FRAME_X_Y*ii)+jj];
            }
            if(framevalmax < (unsigned char)indat[(FRAME_X_Y*ii)+jj])
            {
               framevalmax = (unsigned char)indat[(FRAME_X_Y*ii)+jj];
            }
            frameloc[jj] = 255-(unsigned char)indat[(FRAME_X_Y*ii)+jj];
            //printf("%02X ", (unsigned char)indat[(FRAME_X_Y*ii)+jj]);

            for(xx=0; xx<8; ++xx)
            {
               framescaleduploc = (uchar*)( framescaledup->imageData +
                                            (((ii*8)+xx)*framescaledup->widthStep) );
               for(yy=0; yy<8; ++yy)
               {
                  framescaleduploc[(jj*8)+yy] = 255-(unsigned char)indat[(FRAME_X_Y*ii)+jj];
                  //((uchar*)(framescaledup->imageData + (((ii*8)+xx)*frame->widthStep)))[(jj*8)+yy] = 
                  //   (unsigned char)indat[(FRAME_X_Y*ii)+jj];
               }
            }
         }
      }
      //printf("\n");
      fprintf(stderr,"[frame rx'd] fps := % 6.03f\n", fpsinstant);

      for(ii = 0; ii < FRAME_X_Y; ++ii)
      {
         frameloc = (uchar*)(frame->imageData + (ii*frame->widthStep));
         framenormloc = (uchar*)(framenorm->imageData + (ii*framenorm->widthStep));
         for(jj = 0; jj < FRAME_X_Y; ++jj)
         {
            framenormloc[jj] = (uchar)((frameloc[jj]-framevalmin)*(255.0/framevalmax));
         }
      }

      //cvShowImage("CamCap", framenorm);
      cvShowImage("CamCap", framescaledup);

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
   cvDestroyWindow("EyeVid");

   fclose(camin);
   fclose(camout);
   return 0;
}

