//**************************************************************************************************
// glassescapture.c
//
// Russ Bielawski
// 2012-10-29: created
// 2012-12-26: quit with 'q' instead of ESC
// 2012-12-28: debug is now a command line option
//**************************************************************************************************


//**************************************************************************************************
// includes
//
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
//#include <termios.h>
#include <errno.h>
#include <time.h>
#include <assert.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>

// opencv sources
#include "cv.h"
#include "highgui.h"


//**************************************************************************************************
// defines / constants
//
enum
{
   SYMBOL_SOF           = 0xFF,
   OPCODE_START_CAPTURE = 0x01,
   OPCODE_STOP_CAPTURE  = 0x02,
   OPCODE_SINGLE_FRAME  = 0x04,
   OPCODE_START_ACK     = 0x81,
   OPCODE_STOP_ACK      = 0x82,
   OPCODE_FRAME         = 0x84,
   OPCODE_REQ_NUM_CAMS  = 0x21,
   OPCODE_RESP_NUM_CAMS = 0xA1
};

#define NS_PER_SEC              (1000*1000*1000)
#define MAX_CAMS                (2)
#define FRAME_X_Y               (112)
#define FRAME_LEN               (FRAME_X_Y*FRAME_X_Y)
#define SCALINGVAL              (4)
#define KEY_ESC                 (27)
#define KEY_QUIT                ('q')
#define OUTPATH_MAX_LEN         (256)

#define dbgPrintOp(msg,opcode)  do { \
                                   if(0!=gFlagDbgOutputOn) \
                                   { \
                                      fprintf(stderr,msg,opcode); \
                                   } \
                                } while(0)

//**************************************************************************************************
// globals
//
FILE *gCamin,*gCamout;
char gOutpath[OUTPATH_MAX_LEN];
unsigned int gFlagUserCliValid;
unsigned int gFlagUserCliHelp;
unsigned int gFlagDbgOutputOn;
unsigned int gFlagUserCliModeSelected;
unsigned int gFlagNoWriteVideo;
unsigned int gFlagStepMode;
unsigned int gFlagUseBluetooth;


//**************************************************************************************************
// local function prototypes
//
static char readchar(FILE* inpath);
static void readuntilchar(FILE* infile, char desiredch);
static void mkdir_p(const char *path);
static void getdeepestdirname(const char *path, char *deepestdirname);
static void printusage(char *progname);
static void printhelp(char *progname);
static int  parseargs(int argc, char **argv);
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

   unsigned int numcams;

   IplImage *frame, *framenorm, *framescaledup;
   uchar *frameloc, *framenormloc, *framescaleduploc;
   uchar framevalmin, framevalmax;
   IplImage *frame2, *frame2norm, *frame2scaledup;
   uchar *frame2loc, *frame2normloc, *frame2scaleduploc;
   uchar frame2valmin, frame2valmax;

   // double wide!
   IplImage *framedualnorm, *framedualscaledup;
   uchar *framedualnormloc1, *framedualnormloc2, *framedualscaleduploc1, *framedualscaleduploc2;

   struct timespec time, timeprevious;
   double fpsinstant;
   double fpsmin;
   double fpsmax;

   struct stat outpathst = {0};
   char outfilenameprefix[2*OUTPATH_MAX_LEN];
   char outfilenamefps[2*OUTPATH_MAX_LEN];
   char outfilenameframe[2*OUTPATH_MAX_LEN];
   FILE *outfilefps;
   unsigned int frameidx;

   /* TODO russ: can't get writing video to work yet!
   CvVideoWriter *vidout;*/


   // process user cli
   gFlagUserCliValid=0;
   gFlagUserCliHelp=0;
   gFlagDbgOutputOn=0;
   gFlagUserCliModeSelected=0;
   gFlagNoWriteVideo=0;
   gFlagStepMode=0;
   gFlagUseBluetooth=0;
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


   if(0 == gFlagUseBluetooth)
   {
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
   }
   else
   {
      // use bluetooth
      gCamin = fopen("/dev/rfcomm0", "r");
      if(0 == gCamin)
      {
         fprintf(stderr, "Could not open /dev/rfcomm0 for reading\n");
         return -1;
      }
      gCamout = fopen("/dev/rfcomm0","w");
      if(0 == gCamout)
      {
         fprintf(stderr, "Could not open /dev/rfcomm0 for writing\n");
         fclose(gCamin);
         return -1;
      }
   }

   outfilefps=0;
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

      outfilefps = fopen(outfilenamefps,"w");
      if(0 == outfilefps)
      {
         fprintf(stderr, "Could not open %s for writing capture FPS values\n",outfilenamefps);
         fclose(gCamin);
         fclose(gCamout);
         exit(1);
      }
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
   framedualnorm = cvCreateImage(cvSize(FRAME_X_Y*2,FRAME_X_Y), IPL_DEPTH_8U, 1);
   framedualscaledup = cvCreateImage(cvSize( FRAME_X_Y*SCALINGVAL*2,
                                             FRAME_X_Y*SCALINGVAL ), IPL_DEPTH_8U, 1);


   time.tv_sec = time.tv_nsec = timeprevious.tv_sec = timeprevious.tv_nsec = 0;
   fpsinstant = fpsmin = fpsmax = -1;


   // find out if the device has 1 or 2 cameras
   fputc((char)SYMBOL_SOF,gCamout);
   dbgPrintOp("tx: 0x%02X\n", (unsigned char)SYMBOL_SOF);
   fputc((char)OPCODE_REQ_NUM_CAMS,gCamout);
   fflush(gCamout);
   dbgPrintOp("tx: 0x%02X\n", (unsigned char)OPCODE_REQ_NUM_CAMS);

   readuntilchar(gCamin,SYMBOL_SOF);
   indat[0] = readchar(gCamin);
   if(OPCODE_RESP_NUM_CAMS != (unsigned char)indat[0])
   {
      cleanupCamConn(/*dummy*/0);
      assert(OPCODE_RESP_NUM_CAMS == (unsigned char)indat[0]);
   }
   numcams = readchar(gCamin);
   assert((0 < numcams) && (MAX_CAMS >= numcams));

   if(0 == gFlagStepMode)
   {
      // TODO: should be a function
      fputc((char)SYMBOL_SOF,gCamout);
      fputc((char)OPCODE_START_CAPTURE,gCamout);
      fflush(gCamout);
      dbgPrintOp("tx: 0x%02X\n", (unsigned char)SYMBOL_SOF);
      dbgPrintOp("tx: 0x%02X\n", (unsigned char)OPCODE_START_CAPTURE);

      readuntilchar(gCamin,SYMBOL_SOF);
      indat[0] = readchar(gCamin);
      if(OPCODE_START_ACK != (unsigned char)indat[0])
      {
         cleanupCamConn(/*dummy*/0);
         assert(OPCODE_START_ACK == (unsigned char)indat[0]);
      }

      // we want to gracefully close the remove device connection now that we've started it
      // FIXME russ: this never really worked right and now all it does is ignore Ctrl-C!
      signal(SIGHUP, cleanupCamConn);
      signal(SIGINT, cleanupCamConn);
      signal(SIGABRT, cleanupCamConn);
      signal(SIGQUIT, cleanupCamConn);
      signal(SIGTERM, cleanupCamConn);
   }
   else
   {
      // do nothing: step mode will use the SINGLE_FRAME operation
   }


   while(1)
   {
      if(0 != gFlagStepMode)
      {
         // TODO: should be a function
         fputc((char)SYMBOL_SOF,gCamout);
         fputc((char)OPCODE_SINGLE_FRAME,gCamout);
         fflush(gCamout);
      }

      readuntilchar(gCamin,SYMBOL_SOF);
      indat[0] = readchar(gCamin);
      if(OPCODE_FRAME != (unsigned char)indat[0])
      {
         if(0 == gFlagStepMode)
         {
            cleanupCamConn(/*dummy*/0);
         }
         assert(OPCODE_FRAME == (unsigned char)indat[0]);
      }


      totallen=0;
      indatloc=indat;
      while(FRAME_LEN*numcams > totallen)
      {
         readcnt = fread(indatloc,1,(FRAME_LEN*numcams)-totallen,gCamin);
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
      if(2 == numcams)
      {
         frame2valmin = 255;
         frame2valmax = 0;
      }
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


      // display picture on screen
      if(2 == numcams)
      {
         cvShowImage("CamCapDoubleWide", framedualscaledup);
         cvShowImage("CamCapDoubleWideSmall", framedualnorm);
      }
      else
      {
         cvShowImage("CamCap", framescaledup);
         cvShowImage("CamCapSmall", framenorm);
      }


      // save the frame as a BMP file
      // TODO: should be a function?
      // TODO: save as video instead
      if(0 == gFlagNoWriteVideo)
      {
         snprintf( outfilenameframe,2*OUTPATH_MAX_LEN,"%s/%s_%06d.bmp",gOutpath,
                   outfilenameprefix,frameidx );
         fprintf(outfilefps,"[%06d] fps := % 6.03f\n", frameidx, fpsinstant);

         if(2 == numcams)
         {
            (void)cvSaveImage(outfilenameframe,framedualnorm,0);
         }
         else
         {
            (void)cvSaveImage(outfilenameframe,framenorm,0);
         }
      }

      ++frameidx;


      if(0 == gFlagStepMode)
      {
         // let the user kill the program with ESC
         cc = cvWaitKey(1);
      }
      else
      {
         // don't capture another frame until user presses something
         cc = cvWaitKey(0);
      }
      // look for 'q' key
      if(KEY_QUIT == cc)
      {
         break;
      }
   }


   // finish connection if stream mode (default)
   if(0 == gFlagStepMode)
   {
      // TODO: should be a function
      fputc((char)SYMBOL_SOF,gCamout);
      fputc((char)OPCODE_STOP_CAPTURE,gCamout);
      fflush(gCamout);

      // TODO: russ: this really should have a timeout
      readuntilchar(gCamin,SYMBOL_SOF);
      indat[0] = readchar(gCamin);

      // russ: do I need this?
      fflush(gCamin);
   }
   else
   {
      // do nothing: step mode uses the SINGLE_FRAME operation
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
   if(2 == numcams)
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
      fclose(outfilefps);
   }
   fclose(gCamin);
   fclose(gCamout);
   return 0;
}


//**************************************************************************************************
// local function definitions
//

//
// readchar: read one char from the (device) file
//
static char readchar(FILE* infile)
{
   unsigned readcnt;
   char cc[1];

   do
   {
      readcnt = fread(cc,1,1,infile);
   } while(1>readcnt);
   dbgPrintOp("rx: 0x%02X\n", (unsigned char)cc[0]);
   return cc[0];
}

//
// readuntilchar: keep reading until the desired char is read from the (device) file
//
static void readuntilchar(FILE* infile, char desiredch)
{
   unsigned readcnt;
   char cc[1];
   cc[0] = '\0';

   do
   {
      readcnt = fread(cc,1,1,infile);
      if(0 < readcnt)
      {
         dbgPrintOp("rx: 0x%02X\n", (unsigned char)cc[0]);
      }
   } while(desiredch != cc[0]);
   if(desiredch != cc[0])
   {
      cleanupCamConn(/*dummy*/0);
      assert(desiredch == cc[0]);
   }
}

//
// mkdir_p: like mkdir -p
//
static void mkdir_p(const char *path)
{
   int ii;
   char tmppath[OUTPATH_MAX_LEN];

   for(ii=0; ii<=strlen(path); ++ii)
   {
      if (path[ii] == '/' || path[ii] == '\0') {
         strncpy(tmppath, path, ii);
         tmppath[ii] = '\0';
         mkdir(tmppath, 0755);
      }
   }
}

//
// getdeepestdirname: get the deepest directory name in the specified path
//
static void getdeepestdirname(const char *path, char *deepestdirname)
{
   int ii;
   unsigned int suffixlen, prefixlen;
   unsigned int flagComputeSuffixlenDone, flagComputePrefixlenDone;

   // dear God please forgive me for this travesty


   suffixlen=0;
   prefixlen=strlen(path);
   flagComputeSuffixlenDone=flagComputePrefixlenDone=0;
   for(ii=strlen(path)-1; 0<=ii; --ii)
   {
      if(0==flagComputeSuffixlenDone)
      {
         if(('/' != path[ii]) && ('\0' != path[ii]))
         {
            flagComputeSuffixlenDone = 1;
         }
         else
         {
            ++suffixlen;
         }
      }
      if(0==flagComputePrefixlenDone)
      {
         --prefixlen;
         if((0 != flagComputeSuffixlenDone) && (('/' == path[ii]) || ('\0' == path[ii])))
         {
            flagComputePrefixlenDone = 1;
            break;
         }
      }
   }
   if((0 <= ii) || ('/' == path[0]))
   {
      ++prefixlen;
   }

   strncpy(deepestdirname,(char*)(path+prefixlen),strlen(path)-prefixlen-suffixlen);
   deepestdirname[strlen(path)-prefixlen-suffixlen] = '\0';
}

//
// printusage: prints a usage string for the program
//
static void printusage(char *progname)
{

   fprintf(stderr, "Usage: %s [-b] [-s] [-o PATH|-q]\n", progname);
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
   fprintf(stderr,"  -b         attempt to connect to a bluetooth module already bonded on /dev/rfcomm0\n");
   fprintf(stderr,"  -d         enable debug output (shows communication between glasses and this program\n");
   fprintf(stderr,"  -h         show help and exit\n");
   fprintf(stderr,"  -o PATH    save video to PATH.  PATH cannot already exist.  incompatible with -q\n");
   fprintf(stderr,"  -q         quiet mode.  won't write out any video.  incompatible with -o\n");
   fprintf(stderr,"  -s         step mode.  grab one picture each time the user presses a key\n");
}

//
// parseargs: parse cli
//
static int parseargs(int argc, char **argv)
{
   char cc;
   extern char *optarg;

   errno=0;

   while ((cc = getopt(argc, argv, "bdho:qs")) != EOF)
   {
      switch (cc) {
         case 'b':
            gFlagUseBluetooth = 1;
            break;
         case 'd':
            gFlagDbgOutputOn = 1;
            break;
         case 'h':
            gFlagUserCliValid = 1;
            gFlagUserCliHelp = 1;
            break;
         case 's':
            gFlagStepMode = 1;
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
         default:
            errno=EINVAL;
            break;
      }
   }

   return(errno);
}

//
// cleanupCamConn: just cleanup the camera's connection
//
static void cleanupCamConn(/*dummy for catching signals*/int x)
{
   fputc((char)SYMBOL_SOF,gCamout);
   fputc((char)OPCODE_STOP_CAPTURE,gCamout);
   fflush(gCamout);
   if(0 != x)
   {
      exit(0);
   }
}

//
// getch: grab a single char without waiting for the user to press ENTER
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

