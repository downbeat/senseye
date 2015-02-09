#ifndef GLASSES_PROTO_H
#define GLASSES_PROTO_H
//**************************************************************************************************
// Copyright 2015 Russ Bielawski
//
//
// glasses_proto.h
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
// 1.00 00   2015-02-09  Russ          Created.
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
   GDP_SYMBOL_SOF           = 0xFF,
   GDP_OPCODE_EXIT          = 0xEF,
   GDP_OPCODE_START_CAPTURE = 0x01,
   GDP_OPCODE_STOP_CAPTURE  = 0x02,
   GDP_OPCODE_SINGLE_FRAME  = 0x04,
   GDP_OPCODE_START_ACK     = 0x81,
   GDP_OPCODE_STOP_ACK      = 0x82,
   GDP_OPCODE_FRAME         = 0x84,
   GDP_OPCODE_NUM_CAMS_REQ  = 0x21, // 0x21/0xA1 are v0 protocol artifacts left in place for
   GDP_OPCODE_NUM_CAMS_RESP = 0xA1, // theoretical interoperability.
   GDP_OPCODE_CONNECT_REQ   = 0x22,
   GDP_OPCODE_CONNECT_RESP  = 0xA2
};

enum
{
   GDP_MAX_NUM_CAMS = 4,
   GDP_SUPPORTED_VERSION_MAJOR = 0x01,
   GDP_SUPPORTED_VERSION_MINOR = 0x01
};

// GDP HEADER V01_01 FORMAT:
// |--------|--------|--------|--------|
// | THIS IS A BYTE  |   ALSO A BYTE   |
// |--------|--------|--------|--------|
// Format (on the byte stream):
// |--------|--------|--------|--------|
// |       SOF       |     OPCODE      |
// |--------|--------|--------|--------|
// "Header" starts here.
// |--------|--------|--------|--------|
// | V_MAJOR (0x01)  | V_MINOR (0x01)  |
// |--------|--------|--------|--------|
// "Inner Header" starts here (version-specific)..
// |--------|--------|--------|--------|
// |  NUM_CAMS (N)   |      FLAGS      |
// |--------|--------|--------|--------|
// |--------|--------|--------|--------|
// |      HORIZONTAL RESOLUTION 0      |
// |--------|--------|--------|--------|
// |--------|--------|--------|--------|
// |       VERTICAL RESOLUTION 0       |
// |--------|--------|--------|--------|
// |--------|--------|--------|--------|
// |     [HORIZONTAL RESOLUTION 1]     |
// |--------|--------|--------|--------|
// |--------|--------|--------|--------|
// |      [VERTICAL RESOLUTION 1]      |
// |--------|--------|--------|--------|
// |--------|--------|--------|--------|
// |                ...                |
// |--------|--------|--------|--------|
// |--------|--------|--------|--------|
// |                ...                |
// |--------|--------|--------|--------|
// |--------|--------|--------|--------|
// |     [HORIZONTAL RESOLUTION N]     |
// |--------|--------|--------|--------|
// |--------|--------|--------|--------|
// |      [VERTICAL RESOLUTION N]      |
// |--------|--------|--------|--------|

// GDP HEADER V01_01 FLAGS:
// | MSB | ... | ... | ... | ... | ... | ... | LSB |
// |-----|-----|-----|-----|-----|-----|-----|-----|
// | SCN |                RESERVED                 |
// |-----|-----|-----|-----|-----|-----|-----|-----|
//
// Flag  Name/Description
// ----  ------------------------------------------------------------------------------------------
// SCN   Side-by-side Scanline Mode flag.  All cameras must have the same vertical resolution.
//       This mode receives data from all N images as one single wide image side-by-side-by-side.
//       The purpose of this version is to support the unchanged image byte stream of SensEye v1.

// Byte stream packing and unpacking into the following data structures is performed explicitly by
// the functions gdp_receive_header(...) and gdp_send_header(...).  Therefore, the code does not
// rely on a certain packing of bytes (or flag bits).
struct gdp_imager_resolution
{
   unsigned short horizontal;
   unsigned short vertical;
};

struct gdp_connection_header
{
   unsigned char version_major;
   unsigned char version_minor;
   unsigned char num_cams;
   union
   {
      unsigned char flags_byte_raw;
      struct
      {
         unsigned char is_scanline_mode : 1;
      } flags;
   };
   struct gdp_imager_resolution resolution[GDP_MAX_NUM_CAMS];
};

struct gdp_connection
{
   FILE *istream;
   FILE *ostream;
   struct gdp_connection_header header;
};


//**************************************************************************************************
// Function prototypes
//
int  gdp_wait_for_start_of_frame  (struct gdp_connection*);
int  gdp_receive_header           (struct gdp_connection*);
int  gdp_read_frame               (struct gdp_connection*, unsigned char* [GDP_MAX_NUM_CAMS]);
int  gdp_send_header              (struct gdp_connection*);


#endif // GLASSES_PROTO_H
