#ifndef GLASSES_H
#define GLASSES_H
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
// glasses.h
//
//
// !!! DEPRECATED !!!!
//
// Don't use libglasses1 anymore!
//
// SensEye glasses C library utility functions.  Deprecated.  Functionality now resides in
// glasses_util.h/c and glasses_proto.h/c.
//
//
// AUTHORS
// Russ Bielawski <jbielaws@umich.edu>
//
//
// VERSION   DATE        DESCRIPTION
// 01.00 00  2012-11-15  Created (functionality split from glasses.h/c).
//                       Made more robust and secure.
// 01.00.01  2015-02-09  Deleted peek(...) and getch(...) which are no longer used.
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
