#ifndef GLASSES_UTIL_H
#define GLASSES_UTIL_H
//**************************************************************************************************
// Copyright 2015 Russ Bielawski
// Copyright 2012 University of Michigan
//
//
// glasses_util.h
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
// 1.00.02   2015-02-15  Russ          Added gutil_bail_out(...) function.
//                                     Added const declarations to pointer input variables.
//**************************************************************************************************


//**************************************************************************************************
// Includes
//
#include <stdio.h>
#include <sys/stat.h>


//**************************************************************************************************
// Defines / constants
//
enum
{
   MAX_LEN_PATH             = 255,
   MAX_LEN_PROGNAME         = MAX_LEN_PATH,
   MAX_LEN_CLI_OPTIONS_TEXT = 100,
   MAX_LEN_CLI_ARGUMENT     = 255,
   MAX_LEN_HELP_TEXT        = 4096,
   MAX_CLI_ARGUMENTS        = 16
};

// Structure to store command-line interface (CLI) options.
enum
{
   CLI_ARG_TYPE_FLAG = 0,
   CLI_ARG_TYPE_INTEGER,
   CLI_ARG_TYPE_STRING
};

struct cli_arg
{
   char      flag;
   unsigned  type;
   char      argument[MAX_LEN_CLI_ARGUMENT];
   unsigned  is_flag_set;
};


//**************************************************************************************************
// Function prototypes
//
int   gutil_mkdir_p               (const char *const, mode_t);
int   gutil_get_deepest_dir_name  (const char *const, char *const, size_t);

int   gutil_print_usage           (FILE*, const char *const, const char *const);
int   gutil_print_help            (FILE*, const char *const, const char *const, const char *const);
int   gutil_parse_args            (int, const char *const *const, struct cli_arg*, unsigned);
void  gutil_bail_out              (FILE*, const char *const, ...);


#endif // GLASSES_UTIL_H
