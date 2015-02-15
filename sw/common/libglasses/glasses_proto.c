//**************************************************************************************************
// Copyright 2015 Russ Bielawski
//
//
// glasses_proto.c
//
// SensEye glasses data protocol (GDP) C library.
//
//
// Protocol definitions and helper functions.  All functions which read from an incoming byte
// stream block until enough data is received and do not implement a time out.
//
//
// AUTHOR        FULL NAME             EMAIL ADDRESS
// Russ          Russ Bielawski        russ@bielawski.org
//
// VERSION   DATE        AUTHOR        DESCRIPTION
// 1.00 00   2015-02-10  Russ          Created.
// 1.00.01   2015-02-15  Russ          Added missing prototype for gdp_read(...).
//                                     Fixed gdp_read_frame(...) to return correct number of bytes
//                                     in non-scanline mode.
//**************************************************************************************************


//**************************************************************************************************
// Includes
//
#include "glasses_proto.h"


//**************************************************************************************************
// Local function prototypes
//
static unsigned char  read_uchar             (FILE *);
static int            check_header_validity  (struct gdp_connection_header);


//**************************************************************************************************
// Function definitions 
//

//******************************************************************************
// read_uchar
// Read one char from the (device) file.
//
// Returns the read character.  Returns NULL char on error.
//******************************************************************************
unsigned char read_uchar(FILE *ifile)
{
   char cc;
   unsigned read_count;

   cc = '\0';
   if(NULL != ifile)
   {
      do
      {
         read_count = fread(&cc, 1, 1, ifile);
      } while(1 > read_count);
   }

   return cc;
}

//******************************************************************************
// gdp_wait_for_start_of_frame
// Read from the connections input stream until a start of frame (SOF) character
// is read.
//
// Returns 0 on success and -1 on error.
//******************************************************************************
int gdp_wait_for_start_of_frame(struct gdp_connection *cc)
{
   int rc;

   rc = -1;

   if((NULL != cc) || (NULL != cc->istream))
   {
      while(((unsigned char)GDP_SYMBOL_SOF) != read_uchar(cc->istream))
      {
         // Keep waiting.
      }
      rc = 0;
   }

   return rc;
}

//******************************************************************************
// gdp_receive_header
// Read the GDP header from the input stream.  On error, processing stops
// immediately.  The function assumes a start-of-frame (SOF) was the last byte
// read from the byte stream.
//
// Returns 0 on success and -1 on error.
//******************************************************************************
int gdp_receive_header(struct gdp_connection *cc)
{
   int rc;
   unsigned ii;
   unsigned char temp_flags;

   rc = -1;

   if((NULL != cc) || (NULL != cc->istream))
   {
      if(GDP_OPCODE_CONNECT_RESP == read_uchar(cc->istream))
      {
         // Only version 0x01_01 is recognized.
         cc->header.version_major = read_uchar(cc->istream);
         if(GDP_SUPPORTED_VERSION_MAJOR == cc->header.version_major)
         {
            cc->header.version_minor = read_uchar(cc->istream);
            if(GDP_SUPPORTED_VERSION_MINOR == cc->header.version_minor)
            {
               // Protocol version agreement achieved: read rest of header.
               cc->header.num_cams = read_uchar(cc->istream);
               // Unpack header flags into flags structure.
               temp_flags = read_uchar(cc->istream);
               cc->header.flags.is_scanline_mode = temp_flags >> 7;
               if(cc->header.num_cams <= GDP_MAX_NUM_CAMS)
               {
                  for(ii = 0; ii < cc->header.num_cams; ++ii)
                  {
                     // Unpack in network byte order (big-endian).
                     cc->header.resolution[ii].horizontal  = read_uchar(cc->istream) << 8;
                     cc->header.resolution[ii].horizontal |= read_uchar(cc->istream);
                     cc->header.resolution[ii].vertical    = read_uchar(cc->istream) << 8;
                     cc->header.resolution[ii].vertical   |= read_uchar(cc->istream);
                  }
               }
               // Header successfully received.
               // Check validity of received header (if header validates, return success).
               if(0 == check_header_validity(cc->header))
               {
                  rc = 0;
               }
            }
         }
      }
   }

   return rc;
}

//******************************************************************************
// check_header_validity
// Check the header passed for validity.  This function supports v01_01.
//
// Returns 0 on if header is valid and -1 if invalid.
//******************************************************************************
int check_header_validity(struct gdp_connection_header hh)
{
   int rc;
   unsigned ii;

   // This function detects header errors, and therefore non-detection is success.
   rc = 0;

   // Side-by-side scanline mode only works if all imagers have the same vertical resolution.
   if(0 != hh.flags.is_scanline_mode)
   {
      for(ii = 0; ii < (hh.num_cams-1); ++ii)
      {
         if(hh.resolution[ii+1].vertical != hh.resolution[ii].vertical)
         {
            rc = -1;
            break;
         }
      }
   }

   return rc;
}

//******************************************************************************
// gdp_read
// Read from the connection input stream.
//
// Returns 0 on success and -1 on error.
//******************************************************************************
int gdp_read(struct gdp_connection *cc, unsigned char *buffer, unsigned nn)
{
   int rc;
   unsigned total_read_count;

   rc = -1;

   if((NULL != cc) || (NULL != cc->istream))
   {
      total_read_count = 0;
      do
      {
         total_read_count += fread((char*)(&buffer[total_read_count]), 1,
                                   nn-total_read_count, cc->istream);
      } while(total_read_count < nn);
      rc = 0;
   }

   return rc;
}

//******************************************************************************
// gdp_read_frame
// Read the whole frame into the specified buffers.  A frame includes data from
// all imagers at once, one after another for GDP v01_01.
//
// Precondition: SOF and opcode have been consumed from the byte stream.
//
// Returns number of bytes read on success and -1 on error.
//******************************************************************************
int gdp_read_frame(struct gdp_connection *cc, unsigned char *frame_buffers[GDP_MAX_NUM_CAMS])
{
   int rc;
   unsigned ii, row;

   rc = -1;

   if(NULL != cc)
   {
      if(cc->header.num_cams <= GDP_MAX_NUM_CAMS)
      {
         rc = 0;
         for(ii = 0; ii < cc->header.num_cams; ++ii)
         {
            if(NULL == frame_buffers[ii])
            {
               rc = -1;
               break;
            }
         }
      }
   }

   if(0 == rc)
   {
      if(0 == cc->header.flags.is_scanline_mode)
      {
         // Images are received one after another (image-by-image, row-by-row within an image).
         for(ii = 0; ii < cc->header.num_cams; ++ii)
         {
            gdp_read(cc, frame_buffers[ii],
                     cc->header.resolution[ii].horizontal*cc->header.resolution[ii].vertical);
            rc += cc->header.resolution[ii].horizontal*cc->header.resolution[ii].vertical;
         }
      }
      else
      {
         // Images are received in rows of a wide image formed by each image side-by-side.
         for(row = 0; row < cc->header.resolution[0].vertical; ++row)
         {
            for(ii = 0; ii < cc->header.num_cams; ++ii)
            {
               gdp_read(cc, &(frame_buffers[ii][row*cc->header.resolution[ii].horizontal]),
                        cc->header.resolution[ii].horizontal);
               rc += cc->header.resolution[ii].horizontal;
            }
         }
      }
   }

   return rc;
}

//******************************************************************************
// gdp_send_header
// Send the GDP header to the outputstream.
//
// Returns 0 on success and -1 on error.
//******************************************************************************
int gdp_send_header(struct gdp_connection *cc)
{
   int rc;
   unsigned ii;
   unsigned char temp_flags;

   rc = -1;

   if((NULL != cc) || (NULL != cc->ostream))
   {
      if((GDP_SUPPORTED_VERSION_MAJOR == cc->header.version_major) &&
         (GDP_SUPPORTED_VERSION_MINOR == cc->header.version_minor))
      {
         temp_flags = cc->header.flags.is_scanline_mode << 7;
         fprintf(cc->ostream, "%c%c%c%c", cc->header.version_major,
                 cc->header.version_minor, cc->header.num_cams, temp_flags);
         for(ii = 0; ii < cc->header.num_cams; ++ii)
         {
            fprintf(cc->ostream, "%c%c%c%c", cc->header.resolution[ii].horizontal << 8,
                    cc->header.resolution[ii].horizontal, cc->header.resolution[ii].vertical << 8,
                    cc->header.resolution[ii].vertical);
         }

         // Header successfully transmitted.
         rc = 0;
      }
   }

   return rc;
}
