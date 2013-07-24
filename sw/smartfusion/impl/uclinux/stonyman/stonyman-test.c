///////////////////////////////////////////////////////////////////////////////////////////////////
// Russ Bielawski (russ)
// University of Michigan
//
// stonyman-test.c
//
// VER    DATE        AUTHOR        DESC
// 0.01   2013-07-23  russ          created.
//
// Userspace test code for the Stonyman linux driver code.
///////////////////////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////////////////////////
// includes
//
#include "stonyman.h"
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <unistd.h>
#include <fcntl.h>


////////////////////////////////////////////////////////////////////////////////////////////////////
// local function prototypes
//
static void print_usage(char *progname);
static void print_help(char *progname);
static int  parse_args(int argc, char **argv);


////////////////////////////////////////////////////////////////////////////////////////////////////
// defines / constants
//
#define CMD_CNT          (2)
#define DEVICE_FILENAME  ("/dev/stonyman0")


////////////////////////////////////////////////////////////////////////////////////////////////////
// globals
//
static unsigned g_flag_cli_valid;
static unsigned g_flag_print_help;
static unsigned g_cmd;


////////////////////////////////////////////////////////////////////////////////////////////////////
// main
//
int main(int argc, char **argv)
{
   int stony_fd;

   // parse cli
   g_flag_cli_valid=0;
   g_flag_print_help=0;
   g_cmd=0;
   parse_args(argc,argv);
   if(0==g_flag_cli_valid)
   {
      fprintf(stderr,"ERROR: invalid input\n");
      print_usage(argv[0]);
      exit(1);
   }
   if(0!=g_flag_print_help)
   {
      print_help(argv[0]);
      exit(0);
   }
   if(CMD_CNT<g_cmd)
   {
      fprintf(stderr,"ERROR: invalid command\n");
      print_usage(argv[0]);
      exit(1);
   }
   

   stony_fd=open(DEVICE_FILENAME, O_RDONLY, NULL);
   if(0>stony_fd)
   {
      fprintf(stderr,"ERROR: opening file %s failed\n",DEVICE_FILENAME);
      exit(1);
   }


   switch(g_cmd)
   {
      case 0:
         ioctl(stony_fd,STONYMAN_IOC_START_CAPTURE);
         break;
      case 1:
      default:
         ioctl(stony_fd,STONYMAN_IOC_STOP_CAPTURE);
         break;
   }


   return 0;
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// local function definitions
//

//
// print_usage: prints a usage string for the program
//
static void print_usage(char *progname)
{
   fprintf(stderr, "Usage: %s -c <cmd>\n", progname);
}

//
// print_help: prints the help for the program
//
static void print_help(char *progname)
{
   print_usage(progname);
   fprintf(stderr, "Send ioctl command to stonyman driver\n");
}

//
// parse_args: parse cli
//
static int parse_args(int argc, char **argv)
{
   char cc;
   extern char *optarg;

   errno=0;

   // for some reason, checking for EOF wasn't working (maybe a uClinux peculiarity)
   // so, check against optind used instead
   while(argc>optind)
   {
      // (still safest to check against EOF here)
      if((cc = getopt(argc, argv, "c:h")) == EOF)
      {
         break;
      }
      switch (cc) {
         case 'c':
            g_flag_cli_valid=1;
            g_cmd=atoi(optarg);
            break;
         case 'h':
            g_flag_cli_valid=1;
            g_flag_print_help=1;
            break;
         default:
            errno=EINVAL;
            break;
      }
   }

   return(errno);
}

