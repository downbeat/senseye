#include <stdio.h>
#include "cv.h"
#include "highgui.h"

int g_slider_position;
CvCapture* g_capture;

int main(int argc, char *argv[])
{
   char cc;
   int tmpReturn;
   int frames;
   IplImage *frame, *greyscaled, *inverted, *threshed;

   threshed = inverted = greyscaled = 0;

   if(2 > argc)
   {
      fprintf(stderr, "Please specify an video to display\n");
      return -1;
   }

   cvNamedWindow("EyeVid", CV_WINDOW_AUTOSIZE);
   g_capture = cvCreateFileCapture(argv[1]);
   if(!g_capture)
   {
      fprintf(stderr, "cvCreateFileCapture returned null!\n");
      return -1;  
   }

   while(1)
   {
      frame = cvQueryFrame(g_capture);
      if(!frame)
      {
         break;
      }
      if(0 == greyscaled)        
      {
         assert(0 == inverted);
         assert(0 == threshed);
         greyscaled = cvCreateImage(cvGetSize(frame),IPL_DEPTH_8U,1);
         inverted = cvCreateImage(cvGetSize(frame),IPL_DEPTH_8U,1);
         // FIXME russ: is this right?
         threshed = cvCreateImage(cvGetSize(frame),IPL_DEPTH_8U,1);
      }
      cvShowImage("EyeVid", frame);

      cvCvtColor(frame,greyscaled,CV_RGB2GRAY);
      cvNot(greyscaled, inverted);
      cvThreshold(inverted, threshed, 240, 255 ,CV_THRESH_BINARY_INV);
      cvShowImage("EyeTrack", threshed);
      /* FIXME russ: read the framerate and supply a value here based upon the actual framerate */
      cc = cvWaitKey(33);
      /* check to see if ESC is pressed */
      if(27 == cc)
      {
         break;
      }
/*      cvShowImage("EyeVid", threshed);
      cc = cvWaitKey(17);
      if(27 == cc)
      {
         break;
      }*/
   }

   // FIXME russ: this will crash if we never get a frame (these will still be null)!
   cvReleaseImage(&threshed);
   cvReleaseImage(&inverted);
   cvReleaseImage(&greyscaled);
   cvReleaseCapture(&g_capture);
   cvDestroyWindow("EyeVid");

   return 0;
}

