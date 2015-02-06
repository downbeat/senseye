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
//**************************************************************************************************


//**************************************************************************************************
// Includes
//
#include <stdio.h>
#include <sys/stat.h>


//**************************************************************************************************
// Defines / constants
//
#define MAX_LEN_PATH                      (255)
#define MAX_LEN_PROGNAME                  MAX_LEN_PATH
#define MAX_LEN_CLI_OPTIONS_TEXT          (100)
#define MAX_LEN_CLI_ARGUMENT              (255)
#define MAX_LEN_HELP_TEXT                 (4096)
#define MAX_CLI_ARGUMENTS                 (16)

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
char  gutil_read_char             (FILE *infile);
int   gutil_read_until            (FILE *infile, char desiredch);
int   gutil_mkdir_p               (const char *path, mode_t mode);
int   gutil_get_deepest_dir_name  (const char *path, char *deepest, size_t maxlen);
char  gutil_peek                  (FILE *infile);
char  gutil_getch                 (void);

int   gutil_print_usage           (FILE *ostream, const char *progname, const char *options);
int   gutil_print_help            (FILE *ostream, const char *progname, const char *options,
                                   const char *help_text);
int   gutil_parse_args            (int argc, char **argv, struct cli_arg *cli,
                                   unsigned number_of_cli_args);


#endif // GLASSES_UTIL_H
