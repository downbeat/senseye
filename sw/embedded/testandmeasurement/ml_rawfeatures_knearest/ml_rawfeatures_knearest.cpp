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
#include "ml.h"

#include "glasses.h"


//**************************************************************************************************
// defines / constants
//
#define NS_PER_SEC              (1000*1000*1000)
#define MAX_CAMS                (2)
#define FRAME_X_Y               (112)
#define FRAME_LEN               (FRAME_X_Y*FRAME_X_Y)
#define SCALINGVAL              (4)
#define ESC_KEY                 (27)
#define FIRSTTESTFRAME          (611)


//**************************************************************************************************
// globals
//
static char     gPath[PATH_MAX_LEN];
static unsigned gFlagUserCliValid;
static unsigned gFlagUserCliHelp;


//**************************************************************************************************
// local function prototypes
//
static void      printusage(char *progname);
static void      printhelp(char *progname);
static int       parseargs(int argc, char **argv);
static unsigned  calculateLabel(unsigned xx, unsigned yy);
static void      getCentralCoords(unsigned label, unsigned &xx, unsigned &yy);


//**************************************************************************************************
// main
//
int main(int argc, char** argv)
{
   unsigned ii,jj;
   char indat[256*1024];    // huge because I am a lazy man
   char *indatloc;
   unsigned readcnt;
   unsigned totallen;

   unsigned flagbadframe;
   unsigned gazeX, gazeY;
   unsigned gazelabel;

   unsigned numcams;
   unsigned numframes;
   unsigned numframesbad;
   unsigned numframes_train;
   unsigned numframesbad_train;
/*   unsigned numframes_test;
   unsigned numframesbad_test;*/

   unsigned cntcorrect, cntincorrect;
   float correctnessratio;

   IplImage *frame, *framescaledup;
   uchar *frameloc, *framescaleduploc;
   IplImage *frame2, *frame2scaledup;
   uchar *frame2loc, *frame2scaleduploc;
   // double wide!
   IplImage *framedual, *framedualscaledup;
   uchar *framedualloc1, *framedualloc2, *framedualscaleduploc1, *framedualscaleduploc2;

   CvMat *trainingVectors, *trainingClasses;
   CvMat *testVector;
   float testClass;

   // gaze pictures
   IplImage *gazeoverlay;

   char filenameprefix[2*PATH_MAX_LEN];
   char infilenamegazecoords[2*PATH_MAX_LEN];
   char infilenamebadframes[2*PATH_MAX_LEN];
   FILE *infilegazecoords;
   FILE *infilebadframes;
   char outfilenamelabelshuman[2*PATH_MAX_LEN];
   char outfilenamelabelsml[2*PATH_MAX_LEN];
   FILE *outfilelabelshuman;
   FILE *outfilelabelsml;

   unsigned frameidx_good_train, frameidx;


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


   // FIXME russ: find a way to get the correct path name!
   getdeepestdirname(gPath,filenameprefix);
   snprintf(infilenamegazecoords,2*PATH_MAX_LEN,"%s/%s_gazecoords.txt",gPath,filenameprefix);
   snprintf(infilenamebadframes,2*PATH_MAX_LEN,"%s/%s_badframes.txt",gPath,filenameprefix);

   snprintf(outfilenamelabelshuman,2*PATH_MAX_LEN,"%s/%s_labelshuman.txt",gPath,filenameprefix);
   snprintf(outfilenamelabelsml,2*PATH_MAX_LEN,"%s/%s_labelsml.txt",gPath,filenameprefix);

   // open input files
   infilegazecoords = fopen(infilenamegazecoords,"r");
   if(0 == infilegazecoords)
   {
      fprintf(stderr, "Could not open %s for reading gaze coordinates\n",infilenamegazecoords);
      exit(1);
   }
   infilebadframes = fopen(infilenamebadframes,"r");
   if(0 == infilebadframes)
   {
      fclose(infilegazecoords);
      fprintf(stderr, "Could not open %s for reading bad frame flags\n",infilenamebadframes);
      exit(1);
   }

   cntcorrect = cntincorrect = 0;
   correctnessratio = 0.0f;

   // sloppily grab the number of frames
   numframesbad=0;
   numframesbad_train=0;
//   numframesbad_test=0;
   while(EOF != fscanf(infilebadframes,"[%d] bad? := %d\n",&numframes,&flagbadframe))
   {
      numframesbad += (flagbadframe ? 1:0);
      if(numframes < FIRSTTESTFRAME)
      {
         numframesbad_train += (flagbadframe ? 1:0);
      }
/*      else
      {
         numframesbad_test += (flagbadframe ? 1:0);
      }*/
   }
   // 0 indexed
   numframes++;
   assert(FIRSTTESTFRAME < numframes);
   numframes_train = FIRSTTESTFRAME;
//   numframes_test  = numframes - FIRSTTESTFRAME;
   /* FIXME russ: fseek wasn't working
   fseek(infilebadframes,0,0);*/
   fclose(infilebadframes);
   infilebadframes = fopen(infilenamebadframes,"r");
   if(0 == infilebadframes)
   {
      fclose(infilegazecoords);
      fprintf(stderr, "Could not open %s for reading bad frame flags\n",infilenamebadframes);
      exit(1);
   }

   // open output files
   outfilelabelshuman = fopen(outfilenamelabelshuman,"w");
   if(0 == outfilenamelabelshuman)
   {
      fclose(infilegazecoords);
      fclose(infilebadframes);
      fprintf(stderr, "Could not open %s for writing human labels\n",outfilenamelabelshuman);
      exit(1);
   }
   outfilelabelsml = fopen(outfilenamelabelsml,"w");
   if(0 == outfilelabelsml)
   {
      fclose(infilegazecoords);
      fclose(infilebadframes);
      fclose(outfilelabelshuman);
      fprintf(stderr, "Could not open %s for writing ML labels\n",outfilenamelabelsml);
      exit(1);
   }


   frameidx_good_train=0;


   // init our frame
   frame = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
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


   trainingVectors = cvCreateMat(numframes_train-numframesbad_train, FRAME_X_Y*FRAME_X_Y, CV_32FC1);
   trainingClasses = cvCreateMat(numframes_train-numframesbad_train, 1, CV_32FC1);
   testVector = cvCreateMat(1, FRAME_X_Y*FRAME_X_Y, CV_32FC1);


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

   /* russ: this is better
   for(ii=0; ii<FIRSTTESTFRAME; ++ii)*/
   while(frameidx < FIRSTTESTFRAME-1)
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
            // russ: does this work?
            // put image into traningVectors[frameidx_good_train]
            // will just get written over if this is a bad frame
            trainingVectors->data.fl[frameidx_good_train*FRAME_X_Y*FRAME_X_Y + ii*FRAME_X_Y + jj]
               = (float)(indat[((numcams*ii)*FRAME_X_Y)+jj] / 255.0f);
         }
      }

      // scale up the frames
      cvResize(frame,framescaledup,CV_INTER_LINEAR);
      cvResize(frame2,frame2scaledup,CV_INTER_LINEAR);
      cvResize(framedual,framedualscaledup,CV_INTER_LINEAR);


      if(EOF == fscanf( infilegazecoords, "[%d] (x,y) := (%d,%d)\n",
                        &frameidx,&gazeX,&gazeY ))
      {
         // TODO error message?  this shouldn't happen I think
         break;
      }
      if(EOF == fscanf(infilebadframes,"[%d] bad? := %d\n",&frameidx,&flagbadframe))
      {
         // TODO error message?  this shouldn't happen I think
         break;
      }
      // check if bad frame and skip if so
      if(0 != flagbadframe)
      {
         continue;
      }

      gazelabel = calculateLabel(gazeX,gazeY);
      fprintf(outfilelabelshuman,"[%06d] label_human := %d\n",frameidx,gazelabel);
      fflush(outfilelabelshuman);
      printf("[%06d] label_human := %d\n",frameidx,gazelabel);
      fflush(stdout);


      // put label into traningClasses[frameidx_good_train]
      trainingClasses->data.fl[frameidx_good_train] = (float)gazelabel;

      ++frameidx_good_train;
   }


   // build the classifier
   CvKNearest knn = CvKNearest(trainingVectors,trainingClasses,0,false,3);


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
            // russ: does this work?
            testVector->data.fl[ii*FRAME_X_Y + jj]
               = (float)(indat[((numcams*ii)*FRAME_X_Y)+jj] / 255.0f);
         }
      }

      // scale up the frames
      cvResize(frame,framescaledup,CV_INTER_LINEAR);
      cvResize(frame2,frame2scaledup,CV_INTER_LINEAR);
      cvResize(framedual,framedualscaledup,CV_INTER_LINEAR);


      if(EOF == fscanf( infilegazecoords, "[%d] (x,y) := (%d,%d)\n",
                        &frameidx,&gazeX,&gazeY ))
      {
         // TODO error message?  this shouldn't happen I think
         break;
      }
      if(EOF == fscanf(infilebadframes,"[%d] bad? := %d\n",&frameidx,&flagbadframe))
      {
         // TODO error message?  this shouldn't happen I think
         break;
      }
      // check if bad frame and skip if so
      if(0 != flagbadframe)
      {
         continue;
      }

      gazelabel = calculateLabel(gazeX,gazeY);
      fprintf(outfilelabelshuman,"[%06d] label_human := %d\n",frameidx,gazelabel);
      fflush(outfilelabelshuman);
      printf("[%06d] label_human := %d\n",frameidx,gazelabel);
      fflush(stdout);


      // TODO: classify!
      testClass = knn.find_nearest(testVector,3,0,0,0,0);
      fprintf(outfilelabelsml,"[%06d] label_ml := %d\n",frameidx,(unsigned)testClass);
      fflush(outfilelabelsml);
      printf("[%06d] label_ml    := %d\n",frameidx,(unsigned)testClass);
      fflush(stdout);

      if((unsigned)testClass == gazelabel)
      {
         ++cntcorrect;
      }
      else
      {
         ++cntincorrect;
      }
      correctnessratio = ((float)cntcorrect) / (float)(cntcorrect+cntincorrect);
      printf("running correctness: % 2.04f%%\n",(float)correctnessratio*100.0f);
      fflush(stdout);
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
   fprintf(stderr, "Usage: %s -p PATH\n", progname);
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
   fprintf(stderr,"  -h         show help and exit\n");
   fprintf(stderr,"  -p PATH    load and save attributes files from/to PATH (should be a directory)\n");
}

//
// parseargs: parse cli
//
static int parseargs(int argc, char **argv) {
   char cc;
   extern char *optarg;

   errno=0;

   while ((cc = getopt(argc, argv, "hnp:")) != EOF)
   {
      switch (cc) {
         case 'h':
            gFlagUserCliHelp = 1;
            break;
         case 'p':
            if(PATH_MAX_LEN < strlen(optarg))
            {
               fprintf(stderr,"ERROR: path too long!\n");
               errno=ENAMETOOLONG;
               break;
            }
            gFlagUserCliValid = 1;
            strncpy(gPath, optarg, PATH_MAX_LEN);
            gPath[strlen(optarg)] = '\0';
            break;
         default:
            errno=EINVAL;
            break;
      }
   }

   return(errno);
}

static unsigned  calculateLabel(unsigned xx, unsigned yy)
{
   unsigned binX,binY;

   binX=0;
   binY=0;
   // calculate binX
   if(xx > 2*FRAME_X_Y/3)
   {
      binX=2;
   }
   else if(xx > FRAME_X_Y/3)
   {
      binX=1;
   }
   else
   {
      // binX=0;
   }
   // calculate binY
   if(yy > 2*FRAME_X_Y/3)
   {
      binY=2;
   }
   else if(yy > FRAME_X_Y/3)
   {
      binY=1;
   }
   else
   {
      // binX=0;
   }

   return binY*3 + binX + 1;
}

static void      getCentralCoords(unsigned label, unsigned &xx, unsigned &yy)
{
   // lazy
   switch(label)
   {
      case 1:
         xx = FRAME_X_Y/6;
         yy = FRAME_X_Y/6;
         break;
      case 2:
         xx = 3*FRAME_X_Y/6;
         yy = FRAME_X_Y/6;
         break;
      case 3:
         xx = 5*FRAME_X_Y/6;
         yy = FRAME_X_Y/6;
         break;
      case 4:
         xx = FRAME_X_Y/6;
         yy = 3*FRAME_X_Y/6;
         break;
      case 6:
         xx = 5*FRAME_X_Y/6;
         yy = 3*FRAME_X_Y/6;
         break;
      case 7:
         xx = FRAME_X_Y/6;
         yy = 5*FRAME_X_Y/6;
         break;
      case 8:
         xx = 3*FRAME_X_Y/6;
         yy = 5*FRAME_X_Y/6;
         break;
      case 9:
         xx = 5*FRAME_X_Y/6;
         yy = 5*FRAME_X_Y/6;
         break;
      case 5:
      default:
         xx = 3*FRAME_X_Y/6;
         yy = 3*FRAME_X_Y/6;
         break;
   }
}

