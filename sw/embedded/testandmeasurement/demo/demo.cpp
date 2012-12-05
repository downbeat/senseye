//**************************************************************************************************
// demo.cpp
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
#define KEY_ESC                 (27)
#define KEY_SPACEBAR            (' ')
#define KEY_QUIT                ('q')
#define KEY_STARTUSER           (' ')
#define KEY_ENDUSER             ('z')
#define FIRSTTESTFRAME          (611)
#define BOXES_CNT               (9)
#define TRAINING_FRAMES_REQD    (60)
// russ: unsure which is best to use (or what values)
#define CANNY_THRESH_LOW        (70)
#define CANNY_THRESH_RATIO      (2)
#define TRAINING_WINDOW         ("Training Window")



//**************************************************************************************************
// globals
//
static char     gPath[PATH_MAX_LEN];
static unsigned gFlagUserCliValid;
static unsigned gFlagUserCliHelp;
static int      gLastClickX;
static int      gLastClickY;


//**************************************************************************************************
// local function prototypes
//
static void      cbkCvMouseEvent(int event, int xx, int yy, int flags, void *params);
static char      glassesReadFrame(char buf[], unsigned len);
static void      glassesPopulateImages(unsigned numcams, char buf[], IplImage *frameEye, IplImage *frameScene);
static void      glassesConcatenateImages(IplImage *frameLeft, IplImage *frameRight, IplImage *frameDual, int numchannels);
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
   unsigned idxBox,idxMode;
   char cc;
   char opcode;
   char indat[256*1024];    // huge because I am a lazy man
   char *indatloc;
   unsigned readcnt;
   unsigned totallen;

   unsigned flagquitrequested, flagstartrequested, flagendrequested, flaguserready;

   unsigned markX, markY;
   CvScalar markColor;

   unsigned gazeX, gazeY;
   unsigned gazeXml, gazeYml;

   unsigned trainingFramesCnt[BOXES_CNT];

   unsigned flagbadframe;
   unsigned gazelabel;

   unsigned numcams;
   unsigned numframes;
   unsigned numframesbad;
   unsigned numframes_train;
   unsigned numframesbad_train;

   unsigned cntcorrect, cntincorrect;
   float correctnessratio;

   IplImage *frameEye, *frameEyeNorm, *frameEyeScaledup;
   IplImage *frameEyeMarked;
   uchar *frameEyeLoc, *frameEyeScaledupLoc;
   IplImage *frameScene, *frameSceneNorm, *frameSceneScaledup;
   IplImage *frameSceneMarked;
   uchar *frameSceneLoc, *frameSceneScaledupLoc;
   // double wide!
   IplImage *frameDual, *frameDualScaledup;
   IplImage *frameDualMarked;
   uchar *frameDualLoc1, *frameDualLoc2, *frameDualScaledupLoc1, *frameDualScaledupLoc2;

   IplImage *detected_edges;

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

// FIXME russ remove me!
#if 0
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
#endif // 0


   cntcorrect = cntincorrect = 0;
   correctnessratio = 0.0f;

   frameidx_good_train=0;
   frameidx=0;


   // init our frame
   frameEye = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   frameEyeNorm = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   frameEyeMarked = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 3);
   frameEyeScaledup = cvCreateImage(cvSize( FRAME_X_Y*SCALINGVAL,
                                         FRAME_X_Y*SCALINGVAL ), IPL_DEPTH_8U, 1);
   frameScene = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   frameSceneNorm = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   frameSceneMarked = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 3);
   frameSceneScaledup = cvCreateImage(cvSize( FRAME_X_Y*SCALINGVAL,
                                          FRAME_X_Y*SCALINGVAL ), IPL_DEPTH_8U, 1);
   frameDual = cvCreateImage(cvSize(FRAME_X_Y*2,FRAME_X_Y), IPL_DEPTH_8U, 1);
   frameDualMarked = cvCreateImage(cvSize(FRAME_X_Y*2,FRAME_X_Y), IPL_DEPTH_8U, 3);
   frameDualScaledup = cvCreateImage(cvSize( FRAME_X_Y*SCALINGVAL*2,
                                             FRAME_X_Y*SCALINGVAL ), IPL_DEPTH_8U, 1);
   detected_edges = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);

   // appease the compiler
   frameEyeLoc = frameEyeScaledupLoc = 0;
   frameSceneLoc = frameSceneScaledupLoc = 0;
   frameDualLoc1 = frameDualLoc2 = frameDualScaledupLoc1 = frameDualScaledupLoc2 = 0;


   trainingVectors = cvCreateMat(BOXES_CNT*TRAINING_FRAMES_REQD, FRAME_X_Y*FRAME_X_Y, CV_32FC1);
   trainingClasses = cvCreateMat(BOXES_CNT*TRAINING_FRAMES_REQD, 1, CV_32FC1);
   testVector = cvCreateMat(1, FRAME_X_Y*FRAME_X_Y, CV_32FC1);


   // TODO should be a function
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


   cvNamedWindow(TRAINING_WINDOW,CV_WINDOW_NORMAL);
   cvSetWindowProperty(TRAINING_WINDOW,CV_WND_PROP_FULLSCREEN,CV_WINDOW_FULLSCREEN);
   cvSetMouseCallback(TRAINING_WINDOW,cbkCvMouseEvent,NULL);        


   flagquitrequested=0;
   while(0 == flagquitrequested)
   {
      // SETUP PHASE
      flagstartrequested=0;
      while((0 == flagquitrequested) && (0 == flagstartrequested))
      {
         // read a frame
         opcode = glassesReadFrame(indat,FRAME_LEN*numcams);
         // demo is expected to run with glasses attached, not replay data, so we shouldn't see the SYMBOL_EXIT opcode
         assert(OPCODE_FRAME == (unsigned char)opcode);
         // write data into frame structures
         glassesPopulateImages(numcams,indat,frameEye,frameScene);


         cvNormalize(frameEye,frameEyeNorm,0,255,cv::NORM_MINMAX,CV_8UC1);
         cvCvtColor(frameEyeNorm,frameEyeMarked,CV_GRAY2RGB);
         cvNormalize(frameScene,frameSceneNorm,0,255,cv::NORM_MINMAX,CV_8UC1);
         cvCvtColor(frameSceneNorm,frameSceneMarked,CV_GRAY2RGB);
         cvFlip(frameSceneMarked,frameSceneMarked,1);
         cvLine( frameSceneMarked,
                 cvPoint( 0,         FRAME_X_Y/3 ),
                 cvPoint( FRAME_X_Y, FRAME_X_Y/3 ),
                 CV_RGB(255,255,255),1,8,0 );
         cvLine( frameSceneMarked,
                 cvPoint( 0,         2*FRAME_X_Y/3 ),
                 cvPoint( FRAME_X_Y, 2*FRAME_X_Y/3 ),
                 CV_RGB(255,255,255),1,8,0 );
         cvLine( frameSceneMarked,
                 cvPoint( FRAME_X_Y/3, 0 ),
                 cvPoint( FRAME_X_Y/3, FRAME_X_Y),
                 CV_RGB(255,255,255),1,8,0 );
         cvLine( frameSceneMarked,
                 cvPoint( 2*FRAME_X_Y/3, 0 ),
                 cvPoint( 2*FRAME_X_Y/3, FRAME_X_Y ),
                 CV_RGB(255,255,255),1,8,0 );
         glassesConcatenateImages(frameSceneMarked,frameEyeMarked,frameDualMarked,3);
         cvShowImage(TRAINING_WINDOW, frameDualMarked);
         cc = cvWaitKey(9);
         switch(cc)
         {
            case KEY_QUIT:
               flagquitrequested=1;
               break;
            case KEY_STARTUSER:
               flagstartrequested=1;
               break;
            default:
               // do nothing
               break;
         }
      }
      if(0 != flagquitrequested)
      {
         break;
      }


      // TRAINING PHASE
      for(idxBox=0; (0==flagquitrequested) && (BOXES_CNT>idxBox) ; ++idxBox)
      {
         trainingFramesCnt[idxBox]=0;
         for(idxMode=0; (0==flagquitrequested) && (2>idxMode); ++idxMode)
         {
            // idxMode=0 => RED DOT
            // idxMode=1 => GREEN DOT
            switch(idxMode)
            {
               case 1:
                  markColor = CV_RGB(0,255,0);
                  break;
               case 0:
               default:
                  markColor = CV_RGB(255,0,0);
                  break;
            }
            flaguserready=0;
            while( (0==flagquitrequested) &&
                   ( ((0 == idxMode) && (0 == flaguserready)) ||
                     ((1 == idxMode) && (TRAINING_FRAMES_REQD > trainingFramesCnt[idxBox])) ) )
            {
               // read a frame
               opcode = glassesReadFrame(indat,FRAME_LEN*numcams);
               // demo is expected to run with glasses attached, not replay data, so we shouldn't see the SYMBOL_EXIT opcode
               assert(OPCODE_FRAME == (unsigned char)opcode);
               // write data into frame structures
               glassesPopulateImages(numcams,indat,frameEye,frameScene);
               // wait for mouse click

               cvNormalize(frameEye,frameEyeNorm,0,255,cv::NORM_MINMAX,CV_8UC1);
               cvCvtColor(frameEyeNorm,frameEyeMarked,CV_GRAY2RGB);
               cvNormalize(frameScene,frameSceneNorm,0,255,cv::NORM_MINMAX,CV_8UC1);
               cvCvtColor(frameSceneNorm,frameSceneMarked,CV_GRAY2RGB);
               cvFlip(frameSceneMarked,frameSceneMarked,1);
               cvLine( frameSceneMarked,
                       cvPoint( 0,         FRAME_X_Y/3 ),
                       cvPoint( FRAME_X_Y, FRAME_X_Y/3 ),
                       CV_RGB(255,255,255),1,8,0 );
               cvLine( frameSceneMarked,
                       cvPoint( 0,         2*FRAME_X_Y/3 ),
                       cvPoint( FRAME_X_Y, 2*FRAME_X_Y/3 ),
                       CV_RGB(255,255,255),1,8,0 );
               cvLine( frameSceneMarked,
                       cvPoint( FRAME_X_Y/3, 0 ),
                       cvPoint( FRAME_X_Y/3, FRAME_X_Y),
                       CV_RGB(255,255,255),1,8,0 );
               cvLine( frameSceneMarked,
                       cvPoint( 2*FRAME_X_Y/3, 0 ),
                       cvPoint( 2*FRAME_X_Y/3, FRAME_X_Y ),
                       CV_RGB(255,255,255),1,8,0 );
               getCentralCoords(idxBox+1,markX,markY);
               cvCircle(frameSceneMarked,cvPoint(cvRound(markX),cvRound(markY)),1,markColor,2,8,0);
               glassesConcatenateImages(frameSceneMarked,frameEyeMarked,frameDualMarked,3);
               cvShowImage(TRAINING_WINDOW, frameDualMarked);

               // we're gathering training data (dot is green)
               if(1 == idxMode)
               {
                  // load the features vector
                  for(ii=0; ii<FRAME_X_Y; ++ii)
                  {
                     frameEyeLoc = (uchar*)(frameEyeNorm->imageData + (ii*frameEyeNorm->widthStep));
                     for(jj=0; jj<FRAME_X_Y; ++jj)
                     {
                        trainingVectors->data.fl[frameidx*FRAME_X_Y*FRAME_X_Y + ii*FRAME_X_Y + jj]
                           = (float)(frameEyeLoc[jj] / 255.0f);
                     }
                  }
                  // load the classes values
                  trainingClasses->data.fl[frameidx] = (float)(idxBox+1);
                  ++trainingFramesCnt[idxBox];
                  ++frameidx;
               }

               cc = cvWaitKey(9);
               switch(cc)
               {
                  case KEY_QUIT:
                     flagquitrequested=1;
                     break;
                  case KEY_SPACEBAR:
                     flaguserready=1;
                     break;
                  default:
                     // do nothing
                     break;
               }
            }
         }
      }
      if(0 != flagquitrequested)
      {
         break;
      }


      // build the classifier
      CvKNearest knn = CvKNearest(trainingVectors,trainingClasses,0,false,3);


      // training data's loaded dude
      // USE THE CLASSIFIER PHASE
      flagendrequested=0;
      while((0==flagquitrequested) && (0==flagendrequested))
      {
         // read a frame
         opcode = glassesReadFrame(indat,FRAME_LEN*numcams);
         // demo is expected to run with glasses attached, not replay data, so we shouldn't see the SYMBOL_EXIT opcode
         assert(OPCODE_FRAME == (unsigned char)opcode);
         // write data into frame structures
         glassesPopulateImages(numcams,indat,frameEye,frameScene);
         // wait for mouse click

         cvNormalize(frameEye,frameEyeNorm,0,255,cv::NORM_MINMAX,CV_8UC1);
         cvCvtColor(frameEyeNorm,frameEyeMarked,CV_GRAY2RGB);
         cvNormalize(frameScene,frameSceneNorm,0,255,cv::NORM_MINMAX,CV_8UC1);
         cvCvtColor(frameSceneNorm,frameSceneMarked,CV_GRAY2RGB);
         cvFlip(frameSceneMarked,frameSceneMarked,1);

         // load the test vector
         for(ii=0; ii<FRAME_X_Y; ++ii)
         {
            frameEyeLoc = (uchar*)(frameEyeNorm->imageData + (ii*frameEyeNorm->widthStep));
            for(jj=0; jj<FRAME_X_Y; ++jj)
            {
               testVector->data.fl[ii*FRAME_X_Y + jj] = (float)(frameEyeLoc[jj] / 255.0f);
            }
         }
         // predict gaze
         testClass = knn.find_nearest(testVector,3,0,0,0,0);

         // mark gaze prediction
         getCentralCoords((unsigned)testClass,gazeXml,gazeYml);
         cvCircle(frameSceneMarked,cvPoint(cvRound(gazeXml),cvRound(gazeYml)),1,CV_RGB(0,0,255),2,8,0);

         glassesConcatenateImages(frameSceneMarked,frameEyeMarked,frameDualMarked,3);
         cvShowImage(TRAINING_WINDOW, frameDualMarked);
         cc = cvWaitKey(9);
         switch(cc)
         {
            case KEY_QUIT:
               flagquitrequested=1;
               break;
            case KEY_ENDUSER:
               flagendrequested=1;
               break;
            default:
               // do nothing
               break;
         }
      }
   }

   exit(0);


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
         frameEyeLoc = (uchar*)(frameEye->imageData + (ii*frameEye->widthStep));
         frameSceneLoc = (uchar*)(frameScene->imageData + (ii*frameScene->widthStep));
         frameDualLoc1 = (uchar*)(frameDual->imageData + (ii*frameDual->widthStep));
         frameDualLoc2 = (uchar*)( frameDual->imageData
                                   + (ii*frameDual->widthStep)
                                   + (frameDual->widthStep/2) );

         for(jj = 0; jj < FRAME_X_Y; ++jj)
         {
            frameEyeLoc[jj]  = frameDualLoc1[jj] = (uchar)indat[((numcams*ii)*FRAME_X_Y)+jj];
            frameSceneLoc[jj] = frameDualLoc2[jj] = (uchar)indat[((numcams*ii+1)*FRAME_X_Y)+jj];
         }
      }

      // perform edge detection
      cvEqualizeHist(frameEye, detected_edges);
      cvSmooth(detected_edges, detected_edges, CV_GAUSSIAN, 5,5,0,0);
      cvCanny(detected_edges, detected_edges, CANNY_THRESH_LOW, CANNY_THRESH_LOW*CANNY_THRESH_RATIO, 3);
      cvShowImage("Eye", frameEye);
      cvShowImage("EyeDetectEdges", detected_edges);
      cvMoveWindow("Eye",FRAME_X_Y+100,0);
      cvMoveWindow("EyeDetectEdges",100,0);
      //(void)cvWaitKey(100);

      // load the features vector
      for(ii = 0; ii < FRAME_X_Y; ++ii)
      {
         frameEyeLoc = (uchar*)(detected_edges->imageData + (ii*frameEye->widthStep));
         for(jj = 0; jj < FRAME_X_Y; ++jj)
         {
            trainingVectors->data.fl[frameidx_good_train*FRAME_X_Y*FRAME_X_Y + ii*FRAME_X_Y + jj]
               = (float)(frameEyeLoc[jj] / 255.0f);
         }
      }

      // scale up the frames
      cvResize(frameEye,frameEyeScaledup,CV_INTER_LINEAR);
      cvResize(frameScene,frameSceneScaledup,CV_INTER_LINEAR);
      cvResize(frameDual,frameDualScaledup,CV_INTER_LINEAR);


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
         frameEyeLoc = (uchar*)(frameEye->imageData + (ii*frameEye->widthStep));
         frameSceneLoc = (uchar*)(frameScene->imageData + (ii*frameScene->widthStep));
         frameDualLoc1 = (uchar*)(frameDual->imageData + (ii*frameDual->widthStep));
         frameDualLoc2 = (uchar*)( frameDual->imageData
                                   + (ii*frameDual->widthStep)
                                   + (frameDual->widthStep/2) );

         for(jj = 0; jj < FRAME_X_Y; ++jj)
         {
            frameEyeLoc[jj]  = frameDualLoc1[jj] = (uchar)indat[((numcams*ii)*FRAME_X_Y)+jj];
            frameSceneLoc[jj] = frameDualLoc2[jj] = (uchar)indat[((numcams*ii+1)*FRAME_X_Y)+jj];
         }
      }

      // perform edge detection
      cvEqualizeHist(frameEye, detected_edges);
      cvSmooth(detected_edges, detected_edges, CV_GAUSSIAN, 5,5,0,0);
      cvCanny(detected_edges, detected_edges, CANNY_THRESH_LOW, CANNY_THRESH_LOW*CANNY_THRESH_RATIO, 3);
      cvShowImage("Eye", frameEye);
      cvShowImage("EyeDetectEdges", detected_edges);
      cvMoveWindow("Eye",FRAME_X_Y+100,0);
      cvMoveWindow("EyeDetectEdges",100,0);
      (void)cvWaitKey(50);

      // load the features vector
      for(ii = 0; ii < FRAME_X_Y; ++ii)
      {
         frameEyeLoc = (uchar*)(detected_edges->imageData + (ii*frameEye->widthStep));
         for(jj = 0; jj < FRAME_X_Y; ++jj)
         {
            testVector->data.fl[ii*FRAME_X_Y + jj] = (float)(frameEyeLoc[jj] / 255.0f);
         }
      }


      // scale up the frames
      cvResize(frameEye,frameEyeScaledup,CV_INTER_LINEAR);
      cvResize(frameScene,frameSceneScaledup,CV_INTER_LINEAR);
      cvResize(frameDual,frameDualScaledup,CV_INTER_LINEAR);


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


      cvCvtColor(frameDualScaledup, gazeoverlay, CV_GRAY2RGB);
      cvCircle( gazeoverlay,
                cvPoint(cvRound((gazeX+FRAME_X_Y)*SCALINGVAL),cvRound(gazeY*SCALINGVAL)),
                1, CV_RGB(0,255,0), 4, 8, 0);
      getCentralCoords((unsigned)testClass,gazeXml,gazeYml);
      cvCircle( gazeoverlay,
                cvPoint(cvRound((gazeXml+FRAME_X_Y)*SCALINGVAL),cvRound(gazeYml*SCALINGVAL)),
                1, CV_RGB(255,0,0), 4, 8, 0);
      //FIXME
/*      if(0 != gFlagDrawGrid)
      {*/
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
      /*}*/
      cvShowImage("Gaze Overlay", gazeoverlay);


      // there is a tradeoff here: longer is better for step mode, shorter better for stream mode.
      // the choice of 9 ms delay means this program can't do much faster than ~110 fps
      (void)cvWaitKey(450);
   }
   // release/destroy OpenCV objects
   cvReleaseImage(&frameEye);
   cvReleaseImage(&frameEyeScaledup);
   cvReleaseImage(&frameScene);
   cvReleaseImage(&frameSceneScaledup);
   cvReleaseImage(&frameDual);
   cvReleaseImage(&frameDualScaledup);
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
// cbkCvMouseEvent: called when a user clicks on the OpenCV display window
//
static void cbkCvMouseEvent(int event, int xx, int yy, int flags, void *params)
{
   switch(event)
   {
      case CV_EVENT_LBUTTONDOWN:
         gLastClickX=xx;
         gLastClickY=yy;
         break;
   }
}

//
// glassesReadFrame: read a FRAME frame of length len into buf
//
static char glassesReadFrame(char buf[], unsigned len)
{
   char opcode;
   char *bufloc;
   unsigned readlen;
   unsigned readlenTotal;


   readuntilchar(stdin,SYMBOL_SOF);
   opcode = readchar(stdin);
   if(OPCODE_FRAME == (unsigned char)opcode)
   {
      readlenTotal=0;
      bufloc=buf;
      while(len > readlenTotal)
      {
         readlen = fread(bufloc,1,len-readlenTotal,stdin);
         readlenTotal+=readlen;
         bufloc+=readlen;
      }
      *bufloc = '\0';
   }


   return opcode;
}

//
// glassesPopulateImages: unpack the buffer into the frame structures
//
static void glassesPopulateImages(unsigned numcams, char buf[], IplImage *frameEye, IplImage *frameScene)
{
   // TODO: frame resolutions are hard coded (and this function expects buffer to have enough data)
   unsigned ii,jj;
   uchar *frameEyeLoc;
   uchar *frameSceneLoc;

   // right now this function can only handle two cameras
   assert(2 <= numcams);

   for(ii=0; ii<FRAME_X_Y; ++ii)
   {
      frameEyeLoc = (uchar*)(frameEye->imageData + (ii*frameEye->widthStep));
      if(2 == numcams)
      {
         frameSceneLoc = (uchar*)(frameScene->imageData + (ii*frameScene->widthStep));
      }

      for(jj=0; jj<FRAME_X_Y; ++jj)
      {
         frameEyeLoc[jj]  = (uchar)buf[((numcams*ii)*FRAME_X_Y)+jj];
         if(2 == numcams)
         {
            frameSceneLoc[jj] = (uchar)buf[((numcams*ii+1)*FRAME_X_Y)+jj];
         }
      }
   }
}

//
// glassesConcatenateImages: combine two images into a double wide image
//
static void glassesConcatenateImages(IplImage *frameLeft, IplImage *frameRight, IplImage *frameDual, int numchannels)
{
   // TODO: frame resolutions are hard coded
   unsigned ii,jj,kk;
   uchar *frameLeftLoc;
   uchar *frameRightLoc;
   uchar *frameDualLoc1;
   uchar *frameDualLoc2;

   for(ii=0; ii<FRAME_X_Y; ++ii)
   {
      frameLeftLoc = (uchar*)(frameLeft->imageData + (ii*frameLeft->widthStep));
      frameRightLoc = (uchar*)(frameRight->imageData + (ii*frameRight->widthStep));
      frameDualLoc1 = (uchar*)(frameDual->imageData + (ii*frameDual->widthStep));
      frameDualLoc2 = (uchar*)( frameDual->imageData
                                + (ii*frameDual->widthStep)
                                + (frameDual->widthStep/2) );
      for(jj=0; jj<FRAME_X_Y; ++jj)
      {
         for(kk=0; kk<numchannels; ++kk)
         {
            frameDualLoc1[numchannels*jj+kk] = (uchar)(frameLeftLoc[numchannels*jj+kk]);
            frameDualLoc2[numchannels*jj+kk] = (uchar)(frameRightLoc[numchannels*jj+kk]);
         }
      }
   }
}

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
}

//
// parseargs: parse cli
//
static int parseargs(int argc, char **argv) {
   char cc;
   extern char *optarg;

   errno=0;

   gFlagUserCliValid = 1;
   while ((cc = getopt(argc, argv, "h")) != EOF)
   {
      switch (cc) {
         case 'h':
            gFlagUserCliHelp = 1;
            break;
// FIXME russ remove me!
#if 0
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
#endif // 0
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

static void getCentralCoords(unsigned label, unsigned &xx, unsigned &yy)
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

