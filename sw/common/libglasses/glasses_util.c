//**************************************************************************************************
// Copyright 2015 Russ Bielawski
// Copyright 2012 University of Michigan
//
//
// glasses_util.c
//
// SensEye glasses C library utility functions.
//
//
// Generic utility functions which are used in many places by SensEye C or C++ applications.
//
//
// AUTHOR        FULL NAME             EMAIL ADDRESS
// Russ          Russ Bielawski        russ@bielawski.org
//
// VERSION   DATE        AUTHOR        DESCRIPTION
// 1.00 00   2015-02-02  Russ          Created (functionality split from glasses.h/c).
//                                     Made more robust and secure.
// 1.00.01   2015-02-09  Russ          Removed gutil_read_char and gutil_read_until, moving the
//                                     functionality into the forthcoming glasses_proto.h/c.
//                                     Removed gutil_getch, moving the functionality into the one
//                                     program which used that helper.  And, removed gutil_peek,
//                                     which is not used in the project.
//**************************************************************************************************


//**************************************************************************************************
// Includes
//
#include "glasses_util.h"
#include <stdio.h>
#include <string.h>
#include <termios.h>
#include <unistd.h>
#include <sys/stat.h>
#include <errno.h>


//**************************************************************************************************
// Function definitions
//

//******************************************************************************
// gutil_mkdir_p
// Emulates mkdir -p.  Maximum path length is MAX_LEN_PATH.
//
// Returns 0 on success and -1 on error.
//******************************************************************************
int gutil_mkdir_p(const char *path, mode_t mode)
{
   int rc;
   unsigned ii;
   unsigned path_length;
   char temp_path[MAX_LEN_PATH+1];

   rc = -1;

   if(NULL != path)
   {
      path_length = strnlen(path, MAX_LEN_PATH+1);
      if(path_length <= MAX_LEN_PATH)
      {
         rc = 0;
         for(ii=0; ii<=path_length; ++ii)
         {
            if(('/' == path[ii]) || ('\0' == path[ii]))
            {
               strncpy(temp_path, path, ii);
               temp_path[ii] = '\0';
               mkdir(temp_path, mode);
            }
         }
      }
   }

   return rc;
}


//******************************************************************************
// gutil_get_deepest_dir_name
// Get the deepest directory name in the specified path.  Length of the deepest
// directory name cannot be longer than MAX_LEN_PATH.  Neither can the length of
// the pathname.  If the deepest directory name is longer than maxlen, the first
// maxlen charaters are placed into deepest and an error is returned.
//
// Returns 0 on success and -1 on error.
//******************************************************************************
int gutil_get_deepest_dir_name(const char *path, char *deepest, size_t maxlen)
{
   int rc;
   int ii;
   unsigned path_length;
   unsigned prefix_length;
   unsigned copy_length;

   rc = -1;

   if((NULL != path) && (NULL != deepest) && (maxlen <= MAX_LEN_PATH))
   {
      path_length = strnlen(path, MAX_LEN_PATH+1);
      if(path_length <= MAX_LEN_PATH)
      {
         // Ignore trailing slashes (/).
         while((path_length > 0) && ('/' == path[path_length-1]))
         {
            --path_length;
         }
         // Find prefix length.
         prefix_length = path_length;
         for(ii = path_length-1; (ii >= 0) && ('/' != path[ii]); --ii)
         {
            --prefix_length;
         }

         copy_length = (maxlen < (path_length-prefix_length)) ? maxlen : (path_length-prefix_length);
         strncpy(deepest, (char*)(path+prefix_length), copy_length);
         // Fill remainder of deepest with null charaters.
         for(ii = copy_length; ii < maxlen; ++ii)
         {
            deepest[ii] = '\0';
         }

         // Set return code.
         if(maxlen >= (path_length-prefix_length))
         {
            rc = 0;
         }
      }
   }

   return rc;
}

//****************************************************************************** 
// gutil_print_usage
// Prints a usage string for the program.
//
// Expects to take argv[0] and, therefore, sanitizes the input before usage. 
//
// Returns 0 on success and -1 on error.
//****************************************************************************** 
int gutil_print_usage(FILE *ostream, const char *progname, const char *options)
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
int gutil_print_help(FILE *ostream, const char *progname, const char *options,
                    const char *help_text)
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
int gutil_parse_args(int argc, char **argv, struct cli_arg *cli, unsigned number_of_cli_args)
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
