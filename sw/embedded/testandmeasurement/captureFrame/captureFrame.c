// Russ Bielawski
// 2012-10-18

#include <stdio.h>
//#include <termios.h>
#include <errno.h>
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
   FILE *matout;
   char cc;
   char indat[256*1024];    // huge because I am a lazy man
   char *indatloc;
   int readcnt;
   int totallen;

   IplImage *frame, *framenorm, *framescaledup;
   uchar *frameloc, *framenormloc, *framescaleduploc;
   uchar framevalmin, framevalmax;


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
   matout = fopen(MATGRAB_FILE,"w");
   if(0 == matout)
   {
      fprintf(stderr, "Could not open %s writing\n",MATGRAB_FILE);
      fclose(camin);
      fclose(camout);
      return -1;
   }


   // init our frame
   frame = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   framenorm = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   framescaledup = cvCreateImage(cvSize(FRAME_X_Y*8,FRAME_X_Y*8), IPL_DEPTH_8U, 1);


   fputc((char)OPCODE_SINGLE_FRAME,camout);
//   fputc((char)'A',camout);
   fflush(camout);

//   cc = (char)fgetc(camin);
//   (void)fgets(indat,3,camin);

//   do
//   {
//      readcnt = fread(indat,1,4,camin);
//   } while(1 > readcnt);
   do
   {
      readcnt = fread(indat,1,1,camin);
      //fprintf(stderr,"tx: 0x%02X\n", (unsigned char)OPCODE_START_CAPTURE);
      //fprintf(stderr,"rx: 0x%02X\n", (unsigned char)indat[0]);
   } while(OPCODE_FRAME != (unsigned char)indat[0]);
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

   framevalmin = 255;
   framevalmax = 0;

   printf("tx: 0x%02X\n", OPCODE_SINGLE_FRAME);
   //printf("rx len: %d\n", totallen);
   printf("rx 0x%02X ",(unsigned char)indat[0]);
   fprintf(matout,"Img = [\n");
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
         frameloc[jj] = (unsigned char)indat[(FRAME_X_Y*ii)+jj];
         printf("%02X ", (unsigned char)indat[(FRAME_X_Y*ii)+jj]);

         for(xx=0; xx<8; ++xx)
         {
            framescaleduploc = (uchar*)( framescaledup->imageData +
                                         (((ii*8)+xx)*framescaledup->widthStep) );
            for(yy=0; yy<8; ++yy)
            {
               framescaleduploc[(jj*8)+yy] = (unsigned char)indat[(FRAME_X_Y*ii)+jj];
               //((uchar*)(framescaledup->imageData + (((ii*8)+xx)*frame->widthStep)))[(jj*8)+yy] = 
               //   (unsigned char)indat[(FRAME_X_Y*ii)+jj];
            }
         }
         fprintf(matout,"%03d ",(unsigned char)indat[(112*ii)+jj]);
      }
      fprintf(matout,"\n");
   }
   printf("\n");
   fprintf(matout,"];");

   for(ii = 0; ii < FRAME_X_Y; ++ii)
   {
      frameloc = (uchar*)(frame->imageData + (ii*frame->widthStep));
      framenormloc = (uchar*)(framenorm->imageData + (ii*framenorm->widthStep));
      for(jj = 0; jj < FRAME_X_Y; ++jj)
      {
         //framenormloc[jj] = FRAME_X_Y-(uchar)((frameloc[jj]-framevalmin)*(255.0/framevalmax));
         framenormloc[jj] = (uchar)((frameloc[jj]-framevalmin)*(255.0/framevalmax));
      }
   }


   cvShowImage("CamCap", framescaledup);
   cvShowImage("CamCapSmall", framenorm);
   
   cc = cvWaitKey(0);

   cvReleaseImage(&frame);
   cvReleaseImage(&framenorm);
   cvReleaseImage(&framescaledup);
   cvDestroyWindow("CamCap");

   fclose(camin);
   fclose(camout);
   fclose(matout);
   return 0;
}

