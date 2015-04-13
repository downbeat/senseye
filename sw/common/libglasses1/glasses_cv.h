#ifndef GLASSES_CV_H
#define GLASSES_CV_H
//**************************************************************************************************
// Copyright 2012 University of Michigan
//
//
// glasses_cv.h
//
// SensEye glasses C library image mainpulation functions.  Deprecated.  Populating image buffers
// is now part of glasses_proto.h/c.  cvCopy can perform the functionality of both
// glassesConcatenateImages and glassesSplitImages with far more flexibility.
//
// !!! DEPRECATED !!!!
//
//
// AUTHOR        FULL NAME             EMAIL ADDRESS
// Russ          Russ Bielawski        russ@bielawski.org
//
// VERSION   DATE        AUTHOR        DESCRIPTION
// 1.00 00   2012-12-07  Russ          Created.
// 1.00.01   2015-02-15  Russ          Added a nicer version header.
//                                     Deprecated glasses_cv.h/c.
//**************************************************************************************************


//**************************************************************************************************
// Includes
//
#include "cv.h"


//**************************************************************************************************
// Defines / constants
//


//**************************************************************************************************
// Function prototypes
//
void glassesPopulateImages(unsigned numcams, char buf[], IplImage *frameEye, IplImage *frameScene);
void glassesConcatenateImages(IplImage *frameLeft, IplImage *frameRight, IplImage *frameDual, unsigned numchannels);
void glassesSplitImages(IplImage *frameDual, IplImage *frameLeft, IplImage *frameRight, unsigned numchannels);


#endif // GLASSES_CV_H
