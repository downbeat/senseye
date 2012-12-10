//**************************************************************************************************
// ml_eval.cpp
//
// Russ Bielawski
// 2012-12-07: created
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
#include <dirent.h>

// opencv sources
#include "cv.h"
#include "highgui.h"
#include "ml.h"

#include "glasses.h"
#include "glasses_cv.h"
#include "glasses_ml.h"


//**************************************************************************************************
// defines / constants
//
#define NS_PER_SEC              (1000*1000*1000)
#define MAX_CAMS                (2)
#define FRAME_X_Y               (112)
#define FRAME_LEN               (FRAME_X_Y*FRAME_X_Y)
#define SCALINGVAL              (2)
#define KEY_ESC                 (27)
#define KEY_QUIT                ('q')
// huge because I am a lazy man
#define MAX_FRAMES              (256*1024)
#define INCOMING_WINDOW         ("Raw Video")
#define TEST_SET_RATIO          (0.2)
// russ: unsure which is best to use (or what values)
#define CANNY_THRESH_LOW        (70)
#define CANNY_THRESH_RATIO      (2)



//**************************************************************************************************
// globals
//
static char     gInpath[PATH_MAX_LEN];
static char     gOutpath[PATH_MAX_LEN];
static unsigned gFlagUserCliValid;
static unsigned gFlagUserCliHelp;
static unsigned gFlagNormalizeIncomingFrames;
static unsigned gFlagCompositeDirectory;


//**************************************************************************************************
// local function prototypes
//
static void      printusage(char *progname);
static void      printhelp(char *progname);
static int       parseargs(int argc, char **argv);


//**************************************************************************************************
// main
//
int main(int argc, char** argv)
{
   unsigned ff;
   unsigned ii,jj;
   char cc;

   unsigned flagQuitRequested;

   unsigned gazeX,gazeY;
   unsigned frameFileIdx[MAX_FRAMES];
   unsigned frameFlagTraining[MAX_FRAMES];
   char    *frameFilename[MAX_FRAMES];
   unsigned gazeLabel[MAX_FRAMES];
   unsigned gazeLabel_read;

   int frameidx;
   unsigned frameidx_read;

   unsigned numframes;
   unsigned numframes_train;
   unsigned numframes_test;

   unsigned cntcorrect, cntincorrect;
   float correctnessratio;

   IplImage *frameEye, *frameEyeMarked;
   uchar *frameEyeLoc;
   IplImage *frameScene, *frameSceneMarked;
   // double wide!
   IplImage *frameDual, *frameDualMarked;

   /* FIXME russ: TODO edge detect feature
   // for edge detect feature
   IplImage *detected_edges;
   // gaze pictures
   IplImage *gazeoverlay; */

   CvMat *trainingVectors, *trainingClasses;
   CvMat *testVector;
   float testClass;

   char filenameprefix[2*PATH_MAX_LEN];
   char infilenamelabelshuman[2*PATH_MAX_LEN];
   FILE *infilelabelshuman;
   char outfilenamelabelsml[2*PATH_MAX_LEN];
   FILE *outfilelabelsml;

   struct dirent *dp;
   DIR *dirp;

   // process user cli
   gFlagUserCliValid=0;
   gFlagUserCliHelp=0;
   gFlagNormalizeIncomingFrames = 0;
   gFlagCompositeDirectory = 0;
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

   // allocate data for array of filename strings
   for(ii=0; ii<MAX_FRAMES; ++ii)
   {
      // TODO: I ain't deallocating this!
      frameFilename[ii] = (char*)malloc(sizeof(char)*2*PATH_MAX_LEN);
   }

   // FIXME russ: find a way to get the correct path name!
   getdeepestdirname(gInpath,filenameprefix);
   mkdir_p(gOutpath);
   snprintf(outfilenamelabelsml,2*PATH_MAX_LEN,"%s/%s_labelsml.txt",gOutpath,filenameprefix);


   // read human labels
   // we'll set data for all of the frames we will use.  a frame will only be used if a ground
   // truth label is found in the *labelshuman file
   if(0 != gFlagCompositeDirectory)
   {
      numframes = frameidx = frameidx_read = 0;
      dirp = opendir(gInpath);
      if(0 == dirp)
      {
         fprintf(stderr, "Could not open directory %s\n", gInpath);
         exit(1);
      }
      dp = readdir(dirp);
      // FIXME russ asdfasdf
      fprintf(stderr,"opened dir %s\n",dp->d_name);
      while(0 != dp)
      {
         snprintf( infilenamelabelshuman,2*PATH_MAX_LEN,"%s/%s/%s_labelshuman.txt",
                   gInpath,dp->d_name,dp->d_name );
         infilelabelshuman = fopen(infilenamelabelshuman,"r");
         if(0 == infilelabelshuman)
         {
            fprintf(stderr, "Could not open %s for reading human labels\n",infilenamelabelshuman);
            exit(1);
         }
         while(EOF != fscanf(infilelabelshuman,"[%d] label_human := %d\n",&frameidx_read,&gazeLabel_read))
         {
            frameFileIdx[frameidx] = frameidx_read;
            frameFlagTraining[frameidx] = 0;
            gazeLabel[frameidx] = gazeLabel_read;
            // save the image filename for later
            snprintf( (char*)(frameFilename[frameidx]),2*PATH_MAX_LEN,"%s/%s/%s_%06d.bmp",gInpath,
                      dp->d_name,dp->d_name,frameFileIdx[frameidx] );
            ++frameidx;
            if(MAX_FRAMES <= frameidx)
            {
               break;
            }
         }
         fclose(infilelabelshuman);
         if(MAX_FRAMES <= frameidx)
         {
            break;
         }
         do
         {
            dp = readdir(dirp);
            if(0 == dp)
            {
               break;
            }
         } while(0 == strncmp(dp->d_name,".",1));
      }
      numframes=frameidx;
   }
   else
   {
      snprintf( infilenamelabelshuman,2*PATH_MAX_LEN,"%s/%s_labelshuman.txt",
                gInpath,filenameprefix );
      infilelabelshuman = fopen(infilenamelabelshuman,"r");
      if(0 == infilelabelshuman)
      {
         fprintf(stderr, "Could not open %s for reading human labels\n",infilenamelabelshuman);
         exit(1);
      }
      numframes = frameidx = frameidx_read = 0;
      while(EOF != fscanf(infilelabelshuman,"[%d] label_human := %d\n",&frameidx_read,&gazeLabel_read))
      {
         frameFileIdx[frameidx] = frameidx_read;
         frameFlagTraining[frameidx] = 0;
         gazeLabel[frameidx] = gazeLabel_read;
         // save the image filename for later
         snprintf( (char*)(frameFilename[frameidx]),2*PATH_MAX_LEN,"%s/%s_%06d.bmp",gInpath,
                   filenameprefix,frameFileIdx[frameidx] );
         ++frameidx;
         if(MAX_FRAMES <= frameidx)
         {
            break;
         }
      }
      numframes=frameidx;
      fclose(infilelabelshuman);
   }

   // open output file
   outfilelabelsml = fopen(outfilenamelabelsml,"w");
   if(0 == outfilelabelsml)
   {
      fprintf(stderr, "Could not open %s for writing ML labels\n",outfilenamelabelsml);
      exit(1);
   }


   // init our frame
   frameEye = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   frameEyeMarked = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 3);
   frameScene = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   frameSceneMarked = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 3);
   frameDual = cvCreateImage(cvSize(FRAME_X_Y*2,FRAME_X_Y), IPL_DEPTH_8U, 1);
   frameDualMarked = cvCreateImage(cvSize(FRAME_X_Y*2,FRAME_X_Y), IPL_DEPTH_8U, 3);
   /* FIXME russ: TODO edge detect feature
   // FIXME russ: do I need these?
   detected_edges = cvCreateImage(cvSize(FRAME_X_Y,FRAME_X_Y), IPL_DEPTH_8U, 1);
   gazeoverlay = cvCreateImage(cvSize( FRAME_X_Y*SCALINGVAL*2,FRAME_X_Y*SCALINGVAL ), IPL_DEPTH_8U, 3);*/

   // appease the compiler
   frameEyeLoc = 0;


   cvNamedWindow(INCOMING_WINDOW,CV_WINDOW_NORMAL);
   cvResizeWindow(INCOMING_WINDOW,FRAME_X_Y*2*SCALINGVAL,FRAME_X_Y*SCALINGVAL);

   // calculate number of frames to use for training and number for test
   numframes_train = numframes - numframes*TEST_SET_RATIO;
   numframes_test  = numframes*TEST_SET_RATIO;

   trainingVectors = cvCreateMat(numframes_train, FRAME_X_Y*FRAME_X_Y, CV_32FC1);
   trainingClasses = cvCreateMat(numframes_train, 1, CV_32FC1);
   testVector = cvCreateMat(1, FRAME_X_Y*FRAME_X_Y, CV_32FC1);

   cntcorrect = cntincorrect = 0;
   correctnessratio = 0.0f;


   flagQuitRequested=0;
   //FIXME russ: seed the random number generator
   //srand(time(0));
   for(ff=0; (ff<numframes_train) && (0==flagQuitRequested); ++ff)
   {
      // randomly choose a new frame to be a training frame, ensure it hasn't already been used
      do {
         frameidx = rand() % numframes;
      } while(0 != frameFlagTraining[frameidx]);
      frameFlagTraining[frameidx] = 1;

      // read in frame
      frameDual = cvLoadImage(frameFilename[frameidx],CV_LOAD_IMAGE_UNCHANGED);
      // this program expects 2 frames
      assert(2 == (frameDual->widthStep / FRAME_X_Y));

      glassesSplitImages(frameDual,frameEye,frameScene,1);

      // normalize incoming frame (if flag is set)
      if(0 != gFlagNormalizeIncomingFrames)
      {
         cvNormalize(frameEye,frameEye,0,255,cv::NORM_MINMAX,CV_8UC1);
         cvNormalize(frameScene,frameScene,0,255,cv::NORM_MINMAX,CV_8UC1);
      }

      // setup marked frames for display to screen
      cvCvtColor(frameEye,frameEyeMarked,CV_GRAY2RGB);
      cvCvtColor(frameScene,frameSceneMarked,CV_GRAY2RGB);
      // FIXME russ: do I want to flip the display?
      //cvFlip(frameSceneMarked,frameSceneMarked,1);


      // FIXME russ asdfasdf
      // TODO: image processing goes here!
      /* FIXME russ: TODO add edge detection algo
      // perform edge detection
      cvEqualizeHist(frame, detected_edges);
      cvSmooth(detected_edges, detected_edges, CV_GAUSSIAN, 5,5,0,0);
      cvCanny(detected_edges, detected_edges, CANNY_THRESH_LOW, CANNY_THRESH_LOW*CANNY_THRESH_RATIO, 3);
      cvShowImage("Eye", frame);
      cvShowImage("EyeDetectEdges", detected_edges);
      cvMoveWindow("Eye",FRAME_X_Y+100,0);
      cvMoveWindow("EyeDetectEdges",100,0);
      //(void)cvWaitKey(100);*/


      // load the features vector
      for(ii = 0; ii < FRAME_X_Y; ++ii)
      {
         /* FIXME russ: TODO add edge detection
         frameEyeLoc = (uchar*)(detected_edges->imageData + (ii*detected_edges->widthStep));*/
         frameEyeLoc = (uchar*)(frameEye->imageData + (ii*frameEye->widthStep));
         for(jj = 0; jj < FRAME_X_Y; ++jj)
         {
            trainingVectors->data.fl[ff*FRAME_X_Y*FRAME_X_Y + ii*FRAME_X_Y + jj]
               = (float)(frameEyeLoc[jj] / 255.0f);
         }
      }

      // put label into traningClasses[...]
      trainingClasses->data.fl[ff] = (float)gazeLabel[frameidx];

      printf("[%06d] label_human := %d\n",frameFileIdx[frameidx],(unsigned)gazeLabel[frameidx]);

      getCentralCoords(gazeLabel[frameidx],FRAME_X_Y,FRAME_X_Y,gazeX,gazeY);
      cvCircle(frameSceneMarked,cvPoint(cvRound(gazeX),cvRound(gazeY)),1,CV_RGB(255,0,0),2,8,0);
      // create and display dual frame
      glassesConcatenateImages(frameSceneMarked,frameEyeMarked,frameDualMarked,3);
      cvShowImage(INCOMING_WINDOW, frameDualMarked);

      // give the frame a moment to render and allow user to kill program
      cc = cvWaitKey(9);
      if(KEY_QUIT == cc)
      {
         flagQuitRequested = 1;
      }
   }


   // build the classifier
   CvKNearest knn = CvKNearest(trainingVectors,trainingClasses,0,false,3);


   frameidx=-1;
   for(ff=0; (ff<numframes_test) && (0==flagQuitRequested); ++ff)
   {
      // find the next frame that was not used for training
      //while(0 != frameFlagTraining[++frameidx]);
      // randomly choose a new frame to be a training frame, ensure it hasn't already been used
      do {
         frameidx = rand() % numframes;
      } while(0 != frameFlagTraining[frameidx]);
      frameFlagTraining[frameidx] = 1;

      // read in frame
      frameDual = cvLoadImage(frameFilename[frameidx],CV_LOAD_IMAGE_UNCHANGED);
      // this program expects 2 frames
      assert(2 == (frameDual->widthStep / FRAME_X_Y));

      glassesSplitImages(frameDual,frameEye,frameScene,1);

      // normalize incoming frame (if flag is set)
      if(0 != gFlagNormalizeIncomingFrames)
      {
         cvNormalize(frameEye,frameEye,0,255,cv::NORM_MINMAX,CV_8UC1);
         cvNormalize(frameScene,frameScene,0,255,cv::NORM_MINMAX,CV_8UC1);
      }

      // setup marked frames for display to screen
      cvCvtColor(frameEye,frameEyeMarked,CV_GRAY2RGB);
      cvCvtColor(frameScene,frameSceneMarked,CV_GRAY2RGB);
      // FIXME russ: do I want to flip the display?
      //cvFlip(frameSceneMarked,frameSceneMarked,1);


      // FIXME russ asdfasdf
      // TODO: image processing goes here!
      /* FIXME russ: TODO add edge detection algo
      // perform edge detection
      cvEqualizeHist(frame, detected_edges);
      cvSmooth(detected_edges, detected_edges, CV_GAUSSIAN, 5,5,0,0);
      cvCanny(detected_edges, detected_edges, CANNY_THRESH_LOW, CANNY_THRESH_LOW*CANNY_THRESH_RATIO, 3);
      cvShowImage("Eye", frame);
      cvShowImage("EyeDetectEdges", detected_edges);
      cvMoveWindow("Eye",FRAME_X_Y+100,0);
      cvMoveWindow("EyeDetectEdges",100,0);
      //(void)cvWaitKey(100);*/


      // load the features vector
      for(ii = 0; ii < FRAME_X_Y; ++ii)
      {
         /* FIXME russ: TODO add edge detection
         frameEyeLoc = (uchar*)(detected_edges->imageData + (ii*detected_edges->widthStep));*/
         frameEyeLoc = (uchar*)(frameEye->imageData + (ii*frameEye->widthStep));
         for(jj = 0; jj < FRAME_X_Y; ++jj)
         {
            testVector->data.fl[ii*FRAME_X_Y + jj] = (float)(frameEyeLoc[jj] / 255.0f);
         }
      }

      // put label into traningClasses[...]
      gazeLabel_read = (float)gazeLabel[frameidx];

      // classify!
      testClass = knn.find_nearest(testVector,3,0,0,0,0);
      fprintf(outfilelabelsml,"[%06d] label_ml := %d\n",frameFileIdx[frameidx],(unsigned)testClass);
      fflush(outfilelabelsml);
      printf("[%06d] label_human := %d\n",frameFileIdx[frameidx],(unsigned)gazeLabel_read);
      printf("[%06d] label_ml    := %d\n",frameFileIdx[frameidx],(unsigned)testClass);
      fflush(stdout);

      if((unsigned)testClass == gazeLabel_read)
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

      getCentralCoords(gazeLabel[frameidx],FRAME_X_Y,FRAME_X_Y,gazeX,gazeY);
      cvCircle(frameSceneMarked,cvPoint(cvRound(gazeX),cvRound(gazeY)),1,CV_RGB(255,0,0),2,8,0);
      getCentralCoords((unsigned)testClass,FRAME_X_Y,FRAME_X_Y,gazeX,gazeY);
      cvCircle(frameSceneMarked,cvPoint(cvRound(gazeX),cvRound(gazeY)),1,CV_RGB(0,0,255),2,8,0);
      // create and display dual frame
      glassesConcatenateImages(frameSceneMarked,frameEyeMarked,frameDualMarked,3);
      cvShowImage(INCOMING_WINDOW, frameDualMarked);

      // give the frame a moment to render and allow user to kill program
      cc = cvWaitKey(50);
      if(KEY_QUIT == cc)
      {
         flagQuitRequested = 1;
      }
   }


   // release/destroy OpenCV objects
   cvReleaseImage(&frameEye);
   cvReleaseImage(&frameEyeMarked);
   cvReleaseImage(&frameScene);
   cvReleaseImage(&frameSceneMarked);
   cvReleaseImage(&frameDual);
   cvReleaseImage(&frameDualMarked);
   /* FIXME russ: TODO edge detect feature
   cvReleaseImage(&detected_edges);
   cvReleaseImage(&gazeoverlay);*/
   cvDestroyWindow(INCOMING_WINDOW);


   // close output file
   fclose(outfilelabelsml);
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
   fprintf(stderr, "Usage: %s [-n] -i INPATH -o OUTPATH\n", progname);
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
   fprintf(stderr,"  -c         composite directory supplied as input.  this is a directory of directories of data\n");
   fprintf(stderr,"  -h         show help and exit\n");
   fprintf(stderr,"  -i PATH    load attributes files from/to PATH (should be a directory)\n");
   fprintf(stderr,"  -n         normalize incoming data\n");
   fprintf(stderr,"  -o PATH    save attributes files (ML labels) to PATH (should be a directory)\n");
}

//
// parseargs: parse cli
//
static int parseargs(int argc, char **argv) {
   char cc;
   unsigned flagInpathSupplied;
   unsigned flagOutpathSupplied;
   extern char *optarg;


   flagInpathSupplied = flagOutpathSupplied = 0;
   errno=0;

   while ((cc = getopt(argc, argv, "chi:no:")) != EOF)
   {
      switch (cc) {
         case 'c':
            gFlagCompositeDirectory = 1;
            break;
         case 'h':
            gFlagUserCliHelp = 1;
            break;
         case 'i':
            if(PATH_MAX_LEN < strlen(optarg))
            {
               fprintf(stderr,"ERROR: path too long!\n");
               errno=ENAMETOOLONG;
               break;
            }
            strncpy(gInpath, optarg, PATH_MAX_LEN);
            gInpath[strlen(optarg)] = '\0';
            // set flags
            if(0 != flagOutpathSupplied)
            {
               gFlagUserCliValid = 1;
            }
            flagInpathSupplied = 1;
            break;
         case 'n':
            gFlagNormalizeIncomingFrames = 1;
            break;
         case 'o':
            if(PATH_MAX_LEN < strlen(optarg))
            {
               fprintf(stderr,"ERROR: path too long!\n");
               errno=ENAMETOOLONG;
               break;
            }
            strncpy(gOutpath, optarg, PATH_MAX_LEN);
            gOutpath[strlen(optarg)] = '\0';
            // set flags
            if(0 != flagInpathSupplied)
            {
               gFlagUserCliValid = 1;
            }
            flagOutpathSupplied = 1;
            break;
         default:
            errno=EINVAL;
            break;
      }
   }

   return(errno);
}

