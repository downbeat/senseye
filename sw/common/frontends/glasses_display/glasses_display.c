//*************************************************************************************************
// Copyright 2015 Russ Bielawski
//
//
// glasses_display.c
//
// Glasses display output utility.
//
//
// Utility to read glasses data protocol (GDP) from stdin and display the images.
//
//
// AUTHOR        FULL NAME             EMAIL ADDRESS
// Russ          Russ Bielawski        russ@bielawski.org
//
// VERSION   DATE        AUTHOR        DESCRIPTION
// 1.00.00   2015-02-15  Russ          Created.
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


//**************************************************************************************************
// Defines / Constants
//
// These strings control the usage and help strings.  They are passed to the CLI helpers.
#define USAGE_OPTIONS        "-o <path> [-w] [-x <zoom>]"
#define HELP_TEXT            "SensEye glasses data recording utility.\n"         \
                             "Specify output path over command-line:\n"          \
                             "  -h         Print this help text and quit.\n"     \
                             "  -o <path>  Save video to <path>."                \
                             "  <path> cannot already exist.\n"                  \
                             "  -x <zoom>  Zoom displayed images by a factor"    \
                             " of <zoom>.\n"
// Command-line arguments definitions.  The enum and CLI_ARGS must match!  These constants
// initializalize the structure used by the CLI helper functions.
enum
{
   FLAG_INDEX_HELP = 0,
   FLAG_INDEX_OUTPUT_PATH,
   FLAG_INDEX_ZOOM
};
#define CLI_ARGS  {                                         \
                     { 'h', CLI_ARG_TYPE_FLAG,    "", 0 },  \
                     { 'o', CLI_ARG_TYPE_STRING,  "", 0 },  \
                     { 'x', CLI_ARG_TYPE_INTEGER, "", 0 },  \
                  }
enum
{
   GDP_VERSION_MAJOR_SUPPORTED  = 0x01,
   GDP_VERSION_MINOR_SUPPORTED  = 0x01,
   USER_INPUT_KEY_QUIT          = 'q',
   USER_INPUT_WAIT_TIME_DEFAULT = 1
};



//**************************************************************************************************
// Local function prototypes
//


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
   char user_input_key;
   unsigned char opcode;
   unsigned frame_index;
   unsigned full_frame_length;
   unsigned char *frame_buffers[GDP_MAX_NUM_CAMS];
   // OpenCV image containers hold the current frame.
   IplImage *frames[GDP_MAX_NUM_CAMS];
   unsigned combined_resolution_horizontal;
   unsigned combined_resolution_vertical;
   unsigned filled_width;
   IplImage *combined_frame;
   unsigned scaling_factor;
   IplImage *display_frame;


   // Initialize pointers which will hold dynamically allocated data to NULL.
   for(ii = 0; ii < GDP_MAX_NUM_CAMS; ++ii)
   {
      frames[ii] = NULL;
   }
   combined_frame = display_frame = NULL;


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
   scaling_factor = 1;
   if(0 != cli_args[FLAG_INDEX_ZOOM].is_flag_set)
   {
      scaling_factor = atoi(cli_args[FLAG_INDEX_ZOOM].argument);
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
      gutil_bail_out(stderr, "Glasses data protocol (GDP) version not supported.\n");
   }

   // Initialize data.  OpenCV is used for wrinting out bitmap (BMP) files.
   combined_resolution_horizontal = combined_resolution_vertical = 0;
   full_frame_length = 0;
   for(ii = 0; ii < gdp_conn.header.num_cams; ++ii)
   {
      frames[ii] = cvCreateImage(cvSize(gdp_conn.header.resolution[ii].horizontal,
                                        gdp_conn.header.resolution[ii].vertical), IPL_DEPTH_8U, 1);
      frame_buffers[ii] = (unsigned char*)(frames[ii]->imageData);
      full_frame_length += gdp_conn.header.resolution[ii].horizontal *
                           gdp_conn.header.resolution[ii].vertical;
      combined_resolution_horizontal += gdp_conn.header.resolution[ii].horizontal;
      if(combined_resolution_vertical < gdp_conn.header.resolution[ii].vertical)
      {
         combined_resolution_vertical = gdp_conn.header.resolution[ii].vertical;
      }
   }
   combined_frame = cvCreateImage(cvSize(combined_resolution_horizontal, combined_resolution_vertical),
                                  IPL_DEPTH_8U, 1);
   display_frame = cvCreateImage(cvSize(scaling_factor*combined_resolution_horizontal,
                                        scaling_factor*combined_resolution_vertical),
                                 IPL_DEPTH_8U, 1);


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

      // Normalize the frames for best viewing experience.
      for(ii = 0; ii < gdp_conn.header.num_cams; ++ii)
      {
         cvNormalize(frames[ii], frames[ii], 0, 255, CV_MINMAX, CV_8UC1);
      }

      // Combine all frames side-by-side for visualization.
      filled_width = 0;
      for(ii = 0; ii < gdp_conn.header.num_cams; ++ii)
      {
         // Set ROI for destination.
         cvSetImageROI(combined_frame, cvRect(filled_width, 0, frames[ii]->width,
                                              frames[ii]->height));
         cvCopy(frames[ii], combined_frame, NULL);
         filled_width += frames[ii]->width;
      }
      cvResetImageROI(combined_frame);

      // Output display frame.
      cvResize(combined_frame, display_frame, CV_INTER_LINEAR);
      cvShowImage("SensEye Capture", display_frame);
      user_input_key = cvWaitKey(USER_INPUT_WAIT_TIME_DEFAULT);

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
      }
   }


   // Don't bother to cleanup OpenCV objects, as the whole program is about to be destroyed anyway.
   return 0;
}
