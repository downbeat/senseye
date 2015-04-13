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
// glasses.c
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
#include <glasses.h>
#include <stdio.h>
#include <string.h>
#include <termios.h>
#include <assert.h>
#include <unistd.h>
#include <sys/stat.h>
#include <sys/types.h>


//**************************************************************************************************
// Function definitions
//

//
// readchar: read one char from the (device) file
//
char readchar(FILE *infile)
{
   unsigned readcnt;
   char cc[1];

   do
   {
      readcnt = fread(cc,1,1,infile);
   } while(1>readcnt);
   return cc[0];
}

//
// readuntilchar: keep reading until the desired char is read from the (device) file
//
void readuntilchar(FILE *infile, char desiredch)
{
   unsigned readcnt;
   char cc[1];
   cc[0] = '\0';

   do
   {
      readcnt = fread(cc,1,1,infile);
   } while((1 > readcnt) || (desiredch != cc[0]));
   // TODO: does this need to assert?
   assert(desiredch == cc[0]);
}

//
// mkdir_p: like mkdir -p
//
void mkdir_p(const char *path)
{
   unsigned ii;
   char tmppath[PATH_MAX_LEN];

   for(ii=0; ii<=strlen(path); ++ii)
   {
      if (path[ii] == '/' || path[ii] == '\0') {
         strncpy(tmppath, path, ii);
         tmppath[ii] = '\0';
         mkdir(tmppath, 0755);
      }
   }
}

//
// getdeepestdirname: get the deepest directory name in the specified path
//
void getdeepestdirname(const char *path, char *deepestdirname)
{
   int ii;
   unsigned int suffixlen, prefixlen;
   unsigned int flagComputeSuffixlenDone, flagComputePrefixlenDone;

   // dear God please forgive me for this travesty


   suffixlen=0;
   prefixlen=strlen(path);
   flagComputeSuffixlenDone=flagComputePrefixlenDone=0;
   for(ii=strlen(path)-1; 0<=ii; --ii)
   {
      if(0==flagComputeSuffixlenDone)
      {
         if(('/' != path[ii]) && ('\0' != path[ii]))
         {
            flagComputeSuffixlenDone = 1;
         }
         else
         {
            ++suffixlen;
         }
      }
      if(0==flagComputePrefixlenDone)
      {
         --prefixlen;
         if((0 != flagComputeSuffixlenDone) && (('/' == path[ii]) || ('\0' == path[ii])))
         {
            flagComputePrefixlenDone = 1;
            break;
         }
      }
   }
   if((0 <= ii) || ('/' == path[0]))
   {
      ++prefixlen;
   }

   strncpy(deepestdirname,(char*)(path+prefixlen),strlen(path)-prefixlen-suffixlen);
   deepestdirname[strlen(path)-prefixlen-suffixlen] = '\0';
}

//
// cleanupcamconn: just cleanup the camera's connection
//
void cleanupcamconn(FILE *outfile)
{
   fputc((char)SYMBOL_SOF,outfile);
   fputc((char)OPCODE_STOP_CAPTURE,outfile);
   fflush(outfile);
}

//
// glassesReadFrame: read a FRAME frame of length len into buf
//
char glassesReadFrame(FILE *infile, char buf[], unsigned len)
{
   char opcode;
   char *bufloc;
   unsigned readlen;
   unsigned readlenTotal;


   readuntilchar(infile,SYMBOL_SOF);
   opcode = readchar(infile);
   if(OPCODE_FRAME == (unsigned char)opcode)
   {
      readlenTotal=0;
      bufloc=buf;
      while(len > readlenTotal)
      {
         readlen = fread(bufloc,1,len-readlenTotal,infile);
         readlenTotal+=readlen;
         bufloc+=readlen;
      }
      *bufloc = '\0';
   }


   return opcode;
}
