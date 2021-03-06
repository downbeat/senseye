#ifndef GLASSES_ML_H
#define GLASSES_ML_H
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
// glasses_ml.h
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
// 01.01.00  2015-05-31  Renamed to .cpp as this was always C-ish-but-not-C-compliant C++ code.
//**************************************************************************************************


//**************************************************************************************************
// Includes
//


//**************************************************************************************************
// Defines / constants
//


//**************************************************************************************************
// Function prototypes
//
unsigned calculateLabel(unsigned width, unsigned height, unsigned xx, unsigned yy);
void     getCentralCoords(unsigned label, unsigned width, unsigned height, unsigned &xx, unsigned &yy);


#endif // GLASSES_ML_H

