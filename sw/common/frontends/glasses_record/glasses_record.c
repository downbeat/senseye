//**************************************************************************************************
// Utility to record streaming glasses imager data to a capture log for later playback or analysis.
// This program is part of the SensEye project.
// Copyright (C) 2015  Russ Bielawski
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//**************************************************************************************************

//**************************************************************************************************
// glasses_record.c
//
//
// Glasses data recording utility.
//
//
// Utility to read a glasses data protocol (GDP) byte stream from stdin and save the data to
// file(s) per the glasses data exchange format (GDF).
//
// This utility was created in conjunction with formalizing the GDP and GDF formats.   Any prior
// ad hoc implementation of either the data protocol or data exchange format will be refered to as
// version 0.  As of the initial version of this utility, version 0 is not supported.
//
// At the time of creation of this utility, a key purpose is to be a reference implementation of
// newly standardized GDP and GDF, which are themselves designed to minimally impact the existing
// tools and embedded code as opposed to creating a new design from scratch.
//
// A replay utility will perform the reverse translation: read the data in GDF from a file or files
// and output the data over stdout according to GDP.  These utilities will adapt to understand any
// new versions of the GDP and GDF.
//
// AUTHORS
// Russ Bielawski <jbielaws@umich.edu>
//
//
// VERSION   DATE        DESCRIPTION
// 01.00.00  2015-02-15  Created.
//**************************************************************************************************


//**************************************************************************************************
// Includes
//
#include <stdlib.h>
#include <stdio.h>

// OpenCV sources.
#include "cv.h"
#include "highgui.h"

#include "glasses_util.h"
#include "glasses_proto.h"
#include "glasses_format.h"


//**************************************************************************************************
// Defines / Constants
//
// These variables control the usage and help strings.  They are passed to the CLI helpers.
#define USAGE_OPTIONS          "-o <path>"
#define HELP_TEXT              "SensEye glasses data recording utility.\n"      \
                               "Specify output path over command-line:\n"       \
                               "  -h         Print this help text and quit.\n"  \
                               "  -o <path>  Save video to <path>."             \
                               "  <path> cannot already exist.\n"
// Command-line arguments definitions.  The enum and CLI_ARGS must match!  These constants
// initializalize the structure used by the CLI helper functions.
enum
{
   FLAG_INDEX_HELP = 0,
   FLAG_INDEX_OUTPUT_PATH,
   FLAG_INDEX_ECHO,
};
#define CLI_ARGS  {                                         \
                     { 'h', CLI_ARG_TYPE_FLAG,    "", 0 },  \
                     { 'o', CLI_ARG_TYPE_STRING,  "", 0 },  \
                  }
enum
{
   GDP_VERSION_MAJOR_SUPPORTED  = 0x01,
   GDP_VERSION_MINOR_SUPPORTED  = 0x01,
   GDF_VERSION_MAJOR_SUPPORTED  = 0x01,
   GDF_VERSION_MINOR_SUPPORTED  = 0x01,
   USER_INPUT_KEY_QUIT          = 'q'
};


//**************************************************************************************************
// Function definitions
//

//******************************************************************************
// main
// The main program loop.
//
// Returns 0 on normal program termination and 1 otherwise.
//******************************************************************************
int main(int argc, char** argv)
{
   unsigned ii;
   struct cli_arg cli_args[] = CLI_ARGS;
   struct gdp_connection gdp_conn;
   struct gdf_capture_record gdf_record;
   char user_input_key;
   unsigned char opcode;
   unsigned frame_index;
   unsigned full_frame_length;
   double instantaneous_fps;
   struct timespec frame_time;
   unsigned char *frame_buffers[GDP_MAX_NUM_CAMS];
   // OpenCV image containers hold the current frame.
   IplImage *frames[GDP_MAX_NUM_CAMS];


   // Initialize pointers which will hold dynamically allocated data to NULL.
   for(ii = 0; ii < GDP_MAX_NUM_CAMS; ++ii)
   {
      frames[ii] = NULL;
   }


   // Parse command-line input (CLI).
   if(0 != gutil_parse_args(argc, argv, cli_args, sizeof(cli_args)/sizeof(cli_args[0])))
   {
      gutil_print_usage(stderr, argv[0], USAGE_OPTIONS);
      gutil_bail_out(stderr, NULL);
   }
   // Print help text and exit if requested.
   if(0 != cli_args[FLAG_INDEX_HELP].is_flag_set)
   {
      gutil_print_help(stderr, argv[0], USAGE_OPTIONS, HELP_TEXT);
      // Exit the program.
      return 0;
   }
   gdf_record.version_major = GDF_VERSION_MAJOR_SUPPORTED;
   gdf_record.version_minor = GDF_VERSION_MINOR_SUPPORTED;
   if(0 == cli_args[FLAG_INDEX_OUTPUT_PATH].is_flag_set)
   {
      gutil_bail_out(stderr, "Output path required (specify with -o flag).\n");
   }
   else
   {
      // Check for format agreement with library.
      if((GDF_VERSION_MAJOR != gdf_record.version_major) ||
         (GDF_VERSION_MINOR != gdf_record.version_minor))
      {
         gutil_bail_out(stderr, "Glasses data exchange format (GDF) version v%02X_%02X"
                        " not supported.\n", GDF_VERSION_MAJOR, GDF_VERSION_MINOR);
      }
      else
      {
         strncpy(gdf_record.path, cli_args[FLAG_INDEX_OUTPUT_PATH].argument, GDF_MAX_LENGTH_PATH);
         gdf_record.record_directory_created = 0;
         if(0 != gdf_create_record_directory(&gdf_record))
         {
            gutil_bail_out(stderr, "Output path already exists.\n");
         }
      }
   }


   // Specify connection attributes.
   gdp_conn.istream = stdin;
   gdp_conn.ostream = NULL;
   // Wait for Start of Frame (SOF).
   if(0 != gdp_wait_for_start_of_frame(&gdp_conn))
   {
      gutil_bail_out(stderr, "Error receiving start-of-frame (SOF) (First SOF).\n");
   }
   // Negotiate GDP version and details.
   if(0 != gdp_receive_header(&gdp_conn))
   {
      gutil_bail_out(stderr, "Error receiving glasses data protocol (GDP) header after initial SOF.\n");
   }
   // Check for protocol agreement with library.
   if((GDP_VERSION_MAJOR_SUPPORTED != gdp_conn.header.version_major) ||
      (GDP_VERSION_MINOR_SUPPORTED != gdp_conn.header.version_major))
   {
      gutil_bail_out(stderr, "Glasses data protocol (GDP) version v%02X_%02X not supported.\n",
                     gdp_conn.header.version_major, gdp_conn.header.version_minor);
   }


   // Initialize data.  OpenCV is used for wrinting out bitmap (BMP) files.
   gdf_record.num_cams = gdp_conn.header.num_cams;
   full_frame_length = 0;
   for(ii = 0; ii < gdp_conn.header.num_cams; ++ii)
   {
      frames[ii] = cvCreateImage(cvSize(gdp_conn.header.resolution[ii].horizontal,
                                        gdp_conn.header.resolution[ii].vertical), IPL_DEPTH_8U, 1);
      frame_buffers[ii] = (unsigned char*)(frames[ii]->imageData);
      full_frame_length += gdp_conn.header.resolution[ii].horizontal *
                           gdp_conn.header.resolution[ii].vertical;
      gdf_record.resolution[ii].horizontal = gdp_conn.header.resolution[ii].horizontal;
      gdf_record.resolution[ii].vertical   = gdp_conn.header.resolution[ii].vertical;
   }


   // Loop until EXIT opcode is received or user presses key to quit.
   frame_index = 0;
   user_input_key = USER_INPUT_KEY_QUIT - 1;
   opcode = GDP_OPCODE_EXIT - 1;
   // Grab first start-of-frame (SOF) and next opcode.
   if((0 != gdp_read(&gdp_conn, &opcode, 1)) || (GDP_SYMBOL_SOF != opcode))
   {
      gutil_bail_out(stderr, "Expected start-of-frame (SOF) [0x%02X] but received [0x%02X].\n",
                     GDP_SYMBOL_SOF, opcode);
   }
   if(0 != gdp_read(&gdp_conn, &opcode, 1))
   {
      gutil_bail_out(stderr, "Unknown error reading a single byte from the input stream.\n");
   }
   // Calculate frames-per-second (FPS) immediately upon receiving opcode.
   // FPS will be 0.0, but this function call serves to initialize the frame_time.
   instantaneous_fps = gutil_calculate_fps(NULL, &frame_time);

   while((GDP_OPCODE_EXIT != opcode) && (USER_INPUT_KEY_QUIT != user_input_key))
   {
      if(GDP_OPCODE_FRAME != opcode)
      {
         gutil_bail_out(stderr, "Expected frame rx opcode [0x%02X] but received [0x%02X] (GDP error)!\n",
                        GDP_OPCODE_FRAME, opcode);
      }

      // Read the frames in from all imagers.
      if(full_frame_length != gdp_read_frame(&gdp_conn, frame_buffers))
      {
         gutil_bail_out(stderr, "Error reading frame.\n");
      }

      // Calculate running average FPS.
      gdf_record.fps = (frame_index * gdf_record.fps + instantaneous_fps) / (frame_index + 1);

      // Update metadata file.
      if(0 != gdf_write_metadata_file(&gdf_record))
      {
         gutil_bail_out(stderr, "Error writing metadata file in loop.\n");
      }
      // Save frame image.
      if(0 != gdf_write_frame(&gdf_record, frames, frame_index))
      {
         gutil_bail_out(stderr, "Error writing image (frame index: %d).\n", frame_index);
      }
      // Append FPS reading to FPS file.
      if(0 != gdf_append_fps(&gdf_record, frame_index, instantaneous_fps))
      {
         gutil_bail_out(stderr, "Error appending FPS reading for frame to FPS metadata file.\n");
      }

      ++frame_index;

      // Don't read any more data if user requests to quit.
      if(USER_INPUT_KEY_QUIT != user_input_key)
      {
         // Grab start-of-frame (SOF) and next opcode.
         if((0 != gdp_read(&gdp_conn, &opcode, 1)) || (GDP_SYMBOL_SOF != opcode))
         {
            gutil_bail_out(stderr, "Expected start-of-frame (SOF) [0x%02X] but received [0x%02X].\n",
                     GDP_SYMBOL_SOF, opcode);
         }
         if(0 != gdp_read(&gdp_conn, &opcode, 1))
         {
            gutil_bail_out(stderr, "Unknown error reading a single byte from the input stream.\n");
         }
         // Calculate frames-per-second (FPS) immediately upon receiving opcode.
         instantaneous_fps = gutil_calculate_fps(&frame_time, &frame_time);
      }
   }


   // Don't bother to cleanup OpenCV objects, as the whole program is about to be destroyed anyway.
   return 0;
}
