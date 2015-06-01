
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
// glasses_ml.cpp
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
// 01.00.00  2012-12-07  Created.
// 01.01.00  2015-05-31  Renamed to .cpp as this was always C-ish-but-not-C-compliant C++ code.
//**************************************************************************************************


//**************************************************************************************************
// Includes
//
#include "glasses_ml.h"

#include "cv.h"


//**************************************************************************************************
// Function definitions
//

//
// calculateLabel: calculate nondrant label from coordinates and a width and height
//
unsigned calculateLabel(unsigned width, unsigned height, unsigned xx, unsigned yy)
{
   unsigned binX,binY;

   binX=0;
   binY=0;
   // calculate binX
   if(xx > 2*width/3)
   {
      binX=2;
   }
   else if(xx > width/3)
   {
      binX=1;
   }
   else
   {
      // binX=0;
   }
   // calculate binY
   if(yy > 2*height/3)
   {
      binY=2;
   }
   else if(yy > height/3)
   {
      binY=1;
   }
   else
   {
      // binX=0;
   }

   return binY*3 + binX + 1;
}

//
// getCentralCoords: get the central (x,y) coordinates for the nondrant label supplied
//
void getCentralCoords(unsigned label, unsigned width, unsigned height, unsigned &xx, unsigned &yy)
{
   // lazy
   switch(label)
   {
      case 1:
         xx = width/6;
         yy = height/6;
         break;
      case 2:
         xx = 3*width/6;
         yy = height/6;
         break;
      case 3:
         xx = 5*width/6;
         yy = height/6;
         break;
      case 4:
         xx = width/6;
         yy = 3*height/6;
         break;
      case 6:
         xx = 5*width/6;
         yy = 3*height/6;
         break;
      case 7:
         xx = width/6;
         yy = 5*height/6;
         break;
      case 8:
         xx = 3*width/6;
         yy = 5*height/6;
         break;
      case 9:
         xx = 5*width/6;
         yy = 5*height/6;
         break;
      case 5:
      default:
         xx = 3*width/6;
         yy = 3*height/6;
         break;
   }
}

