//**************************************************************************************************
// This file is part of libglasses, a collection of common functionality used in SensEye.
// libglasses is part of the SensEye project.
// Copyright (C) 2012  The University of Michigan
//
// libglasses is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//**************************************************************************************************

//**************************************************************************************************
// glasses_cv.c
//
//
// !!! DEPRECATED !!!!
//
// Don't use libglasses1 anymore!
//
// SensEye glasses C library image mainpulation functions.  Deprecated.  Populating image buffers
// is now part of glasses_proto.h/c.  cvCopy can perform the functionality of both
// glassesConcatenateImages and glassesSplitImages with far more flexibility.
//
//
// AUTHORS
// Russ Bielawski <jbielaws@umich.edu>
//
//
// VERSION   DATE        DESCRIPTION
// 01.00 00  2012-12-07  Created.
//**************************************************************************************************


//**************************************************************************************************
// Includes
//
#include "glasses_cv.h"

#include "cv.h"


//**************************************************************************************************
// Function definitions
//

//
// glassesPopulateImages: unpack the buffer into the frame structures
//
void glassesPopulateImages(unsigned numcams, char buf[], IplImage *frameEye, IplImage *frameScene)
{
   unsigned ii,jj;
   unsigned width,height;
   uchar *frameEyeLoc;
   uchar *frameSceneLoc;

   // right now this function can only handle up to two cameras
   assert(2 <= numcams);
   // right now images must be same size
   assert(frameEye->width == frameScene->width);
   assert(frameEye->height == frameScene->height);

   width = frameEye->width;
   height = frameEye->height;

   for(ii=0; ii<width; ++ii)
   {
      frameEyeLoc = (uchar*)(frameEye->imageData + (ii*frameEye->widthStep));
      if(2 == numcams)
      {
         frameSceneLoc = (uchar*)(frameScene->imageData + (ii*frameScene->widthStep));
      }

      for(jj=0; jj<height; ++jj)
      {
         frameEyeLoc[jj]  = (uchar)buf[((numcams*ii)*width)+jj];
         if(2 == numcams)
         {
            frameSceneLoc[jj] = (uchar)buf[((numcams*ii+1)*width)+jj];
         }
      }
   }
}

//
// glassesConcatenateImages: combine two images into a double wide image
//
void glassesConcatenateImages(IplImage *frameLeft, IplImage *frameRight, IplImage *frameDual, unsigned numchannels)
{
   unsigned ii,jj,kk;
   unsigned width,height;
   uchar *frameLeftLoc;
   uchar *frameRightLoc;
   uchar *frameDualLoc1;
   uchar *frameDualLoc2;

   // right now images must be same size
   assert(frameLeft->width == frameRight->width);
   assert(frameLeft->height == frameRight->height);

   width = frameLeft->width;
   height = frameLeft->height;

   for(ii=0; ii<width; ++ii)
   {
      frameLeftLoc = (uchar*)(frameLeft->imageData + (ii*frameLeft->widthStep));
      frameRightLoc = (uchar*)(frameRight->imageData + (ii*frameRight->widthStep));
      frameDualLoc1 = (uchar*)(frameDual->imageData + (ii*frameDual->widthStep));
      frameDualLoc2 = (uchar*)( frameDual->imageData
                                + (ii*frameDual->widthStep)
                                + (frameDual->widthStep/2) );
      for(jj=0; jj<height; ++jj)
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
// glassesSplitImages: split double wide image into two images
//
void glassesSplitImages(IplImage *frameDual, IplImage *frameLeft, IplImage *frameRight, unsigned numchannels)
{
   // FIXME: frame resolutions are hard coded
   unsigned ii,jj,kk;
   unsigned width,height;
   uchar *frameLeftLoc;
   uchar *frameRightLoc;
   uchar *frameDualLoc1;
   uchar *frameDualLoc2;

   // right now images must be same size
   assert(frameLeft->width == frameRight->width);
   assert(frameLeft->height == frameRight->height);
   width = frameLeft->width;
   height = frameLeft->height;
   assert((unsigned)frameDual->width == 2*width);
   assert((unsigned)frameDual->height == height);

   for(ii=0; ii<width; ++ii)
   {
      frameLeftLoc = (uchar*)(frameLeft->imageData + (ii*frameLeft->widthStep));
      frameRightLoc = (uchar*)(frameRight->imageData + (ii*frameRight->widthStep));
      frameDualLoc1 = (uchar*)(frameDual->imageData + (ii*frameDual->widthStep));
      frameDualLoc2 = (uchar*)( frameDual->imageData
                                + (ii*frameDual->widthStep)
                                + (frameDual->widthStep/2) );
      for(jj=0; jj<height; ++jj)
      {
         for(kk=0; kk<numchannels; ++kk)
         {
            frameLeftLoc[numchannels*jj+kk] = (uchar)frameDualLoc1[numchannels*jj+kk];
            frameRightLoc[numchannels*jj+kk] = (uchar)frameDualLoc2[numchannels*jj+kk];
         }
      }
   }
}

