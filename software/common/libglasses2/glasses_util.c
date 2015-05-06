//**************************************************************************************************
// This file is part of the glasses data protocol (GDP) and data exchange format (GDF) library.
// libglasses2 is part of the SensEye project.
// Copyright (C) 2012 The University of Michigan
// Copyright (C) 2015  Russ Bielawski
//
// libglasses2 is free software: you can redistribute it and/or modify
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
// glasses_util.c
//
//
// Glasses C library utility functions.
//
// Generic utility functions which are used in many places by C or C++ applications.
//
//
// AUTHORS
// Russ Bielawski <jbielaws@umich.edu>
//
//
// VERSION   DATE        DESCRIPTION
// 01.00 00  2015-02-02  Created (functionality split from glasses.h/c).
//                       Made more robust and secure.
// 01.00.01  2015-02-09  Removed gutil_read_char and gutil_read_until, moving the functionality
//                       into the forthcoming glasses_proto.h/c.  Removed gutil_getch, moving the
//                       functionality into the one program which used that helper.
//                       Removed gutil_peek, which is not used in the project.
// 01.00.02  2015-02-15  Added gutil_bail_out(...) and gutil_calculate_fps(...) functions.
//                       Removed gutil_get_deepest_dir_name(...) and gutil_mkdir_p(...) functions.
//                       Added const declarations to pointer input variables.
//**************************************************************************************************


//**************************************************************************************************
// Includes
//
#include "glasses_util.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <termios.h>
#include <unistd.h>
#include <sys/stat.h>
#include <errno.h>
#include <stdarg.h>
#include <time.h>
#ifdef __MACH__
// OS X support for time measurement.
# include <mach/clock.h> 
# include <mach/mach.h> 
#endif 


//**************************************************************************************************
// Function definitions
//

//****************************************************************************** 
// gutil_print_usage
// Prints a usage string for the program.
//
// Expects to take argv[0] and, therefore, sanitizes the input before usage. 
//
// Returns 0 on success and -1 on error.
//****************************************************************************** 
int gutil_print_usage(FILE *ostream, const char *const progname, const char *const options)
{
   int rc;
   char local_progname[MAX_LEN_PROGNAME];
   char local_options[MAX_LEN_CLI_OPTIONS_TEXT];

   rc = -1;
   local_progname[0] = '\0';
   local_options[0] = '\0';

   if(NULL != ostream)
   {
      rc = 0;

      // Sanitize (truncate) the inputs.
      if(NULL != progname)
      {
         strncpy(local_progname, progname, MAX_LEN_PROGNAME);
      }
      if(NULL != options)
      {
         strncpy(local_options, options, MAX_LEN_CLI_OPTIONS_TEXT);
      }
      fprintf(ostream, "Usage: %s %s\n", local_progname, local_options);
   }

   return rc;
}

//******************************************************************************
// gutil_print_help
// Prints the help text for the calling program.
//
// Expects to take argv[0] and expects that ...print_usage sanitizes it.
//
// help_text is a a block of text which might contain newline charaters.  It is
// truncated to MAX_LEN_HELP_TEXT.
//
// Returns 0 on success and -1 on error.
//******************************************************************************
int gutil_print_help(FILE *ostream, const char *const progname, const char *const options,
                     const char *const help_text)
{
   int rc;
   char local_help_text[MAX_LEN_HELP_TEXT];

   rc = -1;

   if(NULL != ostream)
   {
      if(0 == gutil_print_usage(ostream, progname, options))
      {
         rc = 0;

         if(NULL != help_text)
         {
            // Sanitize (truncate) the inputs.
            strncpy(local_help_text, help_text, MAX_LEN_HELP_TEXT);
            fprintf(ostream, "%s", local_help_text);
         }
      }
   }

   return rc;
}

//******************************************************************************
// gutil_parse_args
// Parse command-line input (CLI).
//
// Passes argc and argv to getopt without any processing.
//
// Returns 0 on success and -1 on error.
//******************************************************************************
int gutil_parse_args(int argc, char **argv, struct cli_arg * cli, unsigned number_of_cli_args)
{
   unsigned ii;
   char cc;
   unsigned flag_found;
   extern char *optarg;
   char options_string[2*MAX_CLI_ARGUMENTS + 1];
   unsigned options_string_length;

   errno = 0;

   if((NULL == cli) || (MAX_CLI_ARGUMENTS < number_of_cli_args))
   {
      errno = -1;
   }
   else
   {
      // Populate the options string.
      options_string_length = 0;
      for(ii = 0; ii < number_of_cli_args; ++ii)
      {
         options_string[options_string_length++] = cli[ii].flag;
         if((CLI_ARG_TYPE_INTEGER == cli[ii].type) || (CLI_ARG_TYPE_STRING == cli[ii].type))
         {
            options_string[options_string_length++] = ':';
         }
      }
      options_string[options_string_length] = '\0';

      while(((cc = getopt(argc, argv, options_string)) != EOF) && (0 == errno))
      {
         flag_found = 0;
         for(ii = 0; (ii < number_of_cli_args) && (0 == flag_found); ++ii)
         {
            if(cc == cli[ii].flag)
            {
               cli[ii].is_flag_set = 1;
               flag_found = 1;
               if((CLI_ARG_TYPE_INTEGER == cli[ii].type) || (CLI_ARG_TYPE_STRING == cli[ii].type))
               {
                  strncpy(cli[ii].argument, optarg, MAX_LEN_CLI_ARGUMENT);
                  cli[ii].argument[MAX_LEN_CLI_ARGUMENT-1] = '\0';
                  if(MAX_LEN_CLI_ARGUMENT < strnlen(optarg, MAX_LEN_CLI_ARGUMENT+1))
                  {
                     errno = ENAMETOOLONG;
                  }
               }
            }
         }
         if(0 == flag_found)
         {
            errno = EINVAL;
         }
      }
   }

   return errno;
}


//******************************************************************************
// gutil_bail_out
// Print a message and exit the program with failure (1).
//
// DOES NOT RETURN!
//******************************************************************************
void gutil_bail_out(FILE *fout, const char *const message_format, ...)
{
   if((NULL != fout) && (NULL != message_format))
   {
      va_list ap;
      va_start(ap, message_format);
      vfprintf(fout, message_format, ap);
      va_end(ap);
   }

   exit(1);
   assert(0);
}

//******************************************************************************
// gutil_calculate_fps
// Calculate the effective FPS between a previous time and now.  If the second
// parameter is not NULL, the time used is copied into that parameter.  It is
// safe to use the same variable for both parameters.
//
// Returns the instantaneous frames per second (FPS) value.  Returns 0.0 FPS if
// previous_time is NULL.
//******************************************************************************
double gutil_calculate_fps (const struct timespec *const previous, struct timespec *const now)
{
   double fps;
   struct timespec time_temp;
#ifdef __MACH__
   // OS X support for time measurement.
   clock_serv_t cclock;
   mach_timespec_t time_mach;
#endif

   fps = 0.0;

#ifdef __MACH__
   // OS X support for time measurement. 
   host_get_clock_service(mach_host_self(), CALENDAR_CLOCK, &cclock);
   clock_get_time(cclock, &time_mach);
   mach_port_deallocate(mach_task_self(), cclock);
   time_temp.tv_sec = time_mach.tv_sec;
   time_temp.tv_nsec = time_mach.tv_nsec;
#else
   (void)clock_gettime(CLOCK_MONOTONIC, &time_temp);
#endif

   if(NULL != previous)
   {
      fps = (1000*1000*1000) / (double)( (1000*1000*1000)*(time_temp.tv_sec - previous->tv_sec)
            + time_temp.tv_nsec - previous->tv_nsec );
   }

   // If time is not NULL, we will return the time value we used to calculate FPS.
   if(NULL != now)
   {
      *now = time_temp;
   }

   return fps;
}
