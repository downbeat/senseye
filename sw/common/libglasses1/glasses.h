#ifndef GLASSES_H
#define GLASSES_H
//**************************************************************************************************
// Copyright 2015 Russ Bielawski
// Copyright 2012 University of Michigan
//
//
// glasses.h
//
// SensEye glasses C library utility functions.  Deprecated.  Functionality now resides in
// glasses_util.h/c and glasses_proto.h/c.
//
// !!! DEPRECATED !!!!
//
//
// AUTHOR        FULL NAME             EMAIL ADDRESS
// Russ          Russ Bielawski        russ@bielawski.org
//
// VERSION   DATE        AUTHOR        DESCRIPTION
// 1.00 00   2012-11-15  Russ          Created (functionality split from glasses.h/c).
//                                     Made more robust and secure.
// 1.00.01   2015-02-09  Russ          Deleted peek(...) and getch(...) which are no longer used.
//                                     Added a nicer version header and cleaned up some style.
//                                     Deprecated glasses.h/c.
//**************************************************************************************************


//**************************************************************************************************
// Includes
//
#include <stdio.h>


//**************************************************************************************************
// Defines / constants
//
enum
{
   SYMBOL_SOF           = 0xFF,
   SYMBOL_EXIT          = 0xFE,
   OPCODE_START_CAPTURE = 0x01,
   OPCODE_STOP_CAPTURE  = 0x02,
   OPCODE_SINGLE_FRAME  = 0x04,
   OPCODE_START_ACK     = 0x81,
   OPCODE_STOP_ACK      = 0x82,
   OPCODE_FRAME         = 0x84,
   OPCODE_REQ_NUM_CAMS  = 0x21,
   OPCODE_RESP_NUM_CAMS = 0xA1
};

enum
{
   PATH_MAX_LEN = 255
};


//**************************************************************************************************
// Function prototypes
//
char readchar(FILE *infile);
void readuntilchar(FILE *infile, char desiredch);
void mkdir_p(const char *path);
void getdeepestdirname(const char *path, char *deepestdirname);
void cleanupcamconn(FILE *outfile);
char glassesReadFrame(FILE *infile, char buf[], unsigned len);


#endif // GLASSES_H
