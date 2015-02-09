//**************************************************************************************************
// Copyright 2015 Russ Bielawski 
// Copyright 2012 The University of Michigan
// 
// 
// glassescapsnapshots.c
// 
// SensEye capture utility which supports requesting single frames only when the user presses a key.
//
// This utility will be phased out (again) with the possibility of adding the feature back into
// capture_replay.c.
// 
// 
// AUTHOR        FULL NAME             EMAIL ADDRESS 
// Russ          Russ Bielawski        russ@bielawski.org 
// 
// VERSION   DATE        AUTHOR        DESCRIPTION 
// 1.00 00   2012-10-29  Russ          Created. 
// 1.00 01   2012-11-12  Russ          Split step mode functionality out from captureDualStream.c.
// 1.00.02   2015-02-09  Russ          Removed printusage, printhelp and parseargs local functions
//                                     in favor of the gutil_... helpers.  getch(...) is now a 
//                                     local function and will be removed from glasses.h/c.
//                                     Switched to using protocol definitions from glasses_proto.h
//                                     rather than glasses.h (which changes the value of the EXIT
//                                     opcode).
//**************************************************************************************************


//**************************************************************************************************
// Includes
//
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <assert.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>

// Required for getch(...).
#include <termios.h>

#include "glasses.h"
#include "glasses_util.h"
// This program only uses defined in the glasses_proto header (the library need not be linked).
#include "glasses_proto.h"


//**************************************************************************************************
// Defines / constants
//
#define USAGE_OPTIONS         "[-b]"
#define HELP_TEXT             "SensEye glasses capture utility which throttles data requests.\n"  \
                              "Program waits for any input before requesting next frame.\n"       \
                              "At the prompt, ESC tells the program to exit rather than"          \
                              " continue capturing.\n"                                            \
                              "  -h  Print this help text and quit.\n"                            \
                              "  -b  Attempt to connect to a bluetooth device already bonded on"  \
                              " /dev/rfcomm0.\n"
#define DBG_PRINT_TXRX_OPS    (0)
#define NS_PER_SEC            (1000*1000*1000)
#define MAX_CAMS              (2)
#define FRAME_X_Y             (112)
#define FRAME_LEN             (FRAME_X_Y*FRAME_X_Y)
#define SCALINGVAL            (4)
#define ESC_KEY               (27)
#define OUTPATH_MAX_LEN       (256)

#define dbgPrintOp(msg,opcode) do { \
                                  if(0!=DBG_PRINT_TXRX_OPS) \
                                  { \
                                     fprintf(stderr,msg,opcode); \
                                  } \
                               } while(0)
// Command-line arguments definitions.  The enum and CLI_ARGS must match!  These constants
// initializalize the structure used by the CLI helper functions.
enum
{
   FLAG_INDEX_HELP = 0,
   FLAG_INDEX_USE_BLUETOOTH
};
#define CLI_ARGS  {                                         \
                     { 'h', CLI_ARG_TYPE_FLAG,    "", 0 },  \
                     { 'b', CLI_ARG_TYPE_FLAG,    "", 0 }   \
                  }


//**************************************************************************************************
// Globals
//
FILE *gCamin,*gCamout;


//**************************************************************************************************
// Local function prototypes
//
static char  getch(void);


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
   struct cli_arg cli_args[] = CLI_ARGS;
   char cc;
   char indat[256*1024];    // huge because I am a lazy man
   char *indatloc;
   int readcnt;
   int totallen;

   unsigned numcams;


   // Parse command-line input (CLI).
   if(0 != gutil_parse_args(argc, argv, cli_args, sizeof(cli_args)/sizeof(cli_args[0])))
   {
      gutil_print_usage(stderr, argv[0], USAGE_OPTIONS);
      exit(1);
   }

   // Print help text and exit if requested.
   if(0 != cli_args[FLAG_INDEX_HELP].is_flag_set)
   {
      gutil_print_help(stderr, argv[0], USAGE_OPTIONS, HELP_TEXT);
      exit(0);
   }

   if(0 == cli_args[FLAG_INDEX_USE_BLUETOOTH].is_flag_set)
   {
      // russ: this is a little inelegant
      gCamin = fopen("/dev/ttyACM0","r");
      if(0 == gCamin)
      {
         fprintf(stderr, "Could not open /dev/ttyACM0 for reading; trying /dev/ttyACM1\n");
         gCamin = fopen("/dev/ttyACM1", "r");
         if(0 == gCamin)
         {
            fprintf(stderr, "Could not open /dev/ttyACM1 for reading\n");
            return -1;
         }
         gCamout = fopen("/dev/ttyACM1","w");
         if(0 == gCamout)
         {
            fprintf(stderr, "Could not open /dev/ttyACM1 for writing\n");
            fclose(gCamin);
            return -1;
         }
      }
      else
      {
         gCamout = fopen("/dev/ttyACM0","w");
         if(0 == gCamout)
         {
            fprintf(stderr, "Could not open /dev/ttyACM0 for writing\n");
            fclose(gCamin);
            return -1;
         }
      }
   }
   else
   {
      // use bluetooth
      gCamin = fopen("/dev/rfcomm0", "r");
      if(0 == gCamin)
      {
         fprintf(stderr, "Could not open /dev/rfcomm0 for reading\n");
         return -1;
      }
      gCamout = fopen("/dev/rfcomm0","w");
      if(0 == gCamout)
      {
         fprintf(stderr, "Could not open /dev/rfcomm0 for writing\n");
         fclose(gCamin);
         return -1;
      }
   }


   // find out if the device has 1 or 2 cameras
   fputc((char)GDP_SYMBOL_SOF,gCamout);
   dbgPrintOp("tx: 0x%02X\n", (unsigned char)GDP_SYMBOL_SOF);
   fputc((char)GDP_OPCODE_NUM_CAMS_REQ,gCamout);
   dbgPrintOp("tx: 0x%02X\n", (unsigned char)GDP_OPCODE_NUM_CAMS_REQ);
   fflush(gCamout);

   readuntilchar(gCamin,GDP_SYMBOL_SOF);
   dbgPrintOp("tx: 0x%02X\n", (unsigned char)GDP_SYMBOL_SOF);
   indat[0] = readchar(gCamin);
   dbgPrintOp("tx: 0x%02X\n", (unsigned char)indat[0]);
   if(GDP_OPCODE_NUM_CAMS_RESP != (unsigned char)indat[0])
   {
      assert(GDP_OPCODE_NUM_CAMS_RESP == (unsigned char)indat[0]);
   }
   numcams = readchar(gCamin);
   dbgPrintOp("tx: 0x%02X\n", (unsigned char)numcams);
   assert((0 < numcams) && (MAX_CAMS >= numcams));

   // print numcams on stdout for pipe interface
   printf("%c",GDP_SYMBOL_SOF);
   printf("%c",GDP_OPCODE_NUM_CAMS_RESP);
   printf("%c",(unsigned char)numcams);
   fflush(stdout);


   while(1)
   {
      // TODO: should be a function
      fputc((char)GDP_SYMBOL_SOF,gCamout);
      fputc((char)GDP_OPCODE_SINGLE_FRAME,gCamout);
      fflush(gCamout);

      readuntilchar(gCamin,GDP_SYMBOL_SOF);
      dbgPrintOp("rx: 0x%02X\n", (unsigned char)GDP_SYMBOL_SOF);
      printf("%c",GDP_SYMBOL_SOF);
      indat[0] = readchar(gCamin);
      dbgPrintOp("rx: 0x%02X\n", (unsigned char)indat[0]);
      printf("%c",indat[0]);
      if(GDP_OPCODE_FRAME != (unsigned char)indat[0])
      {
         assert(GDP_OPCODE_FRAME == (unsigned char)indat[0]);
      }


      totallen=0;
      indatloc=indat;
      while(FRAME_LEN*numcams > totallen)
      {
         readcnt = fread(indatloc,1,(FRAME_LEN*numcams)-totallen,gCamin);
         totallen+=readcnt;
         indatloc+=readcnt;
      }
      *indatloc = '\0';


      printf("%s",indat);
      fflush(stdout);


      cc = getch();
      // look for ESC key
      if(ESC_KEY == cc)
      {
         break;
      }
   }


   // tell listening program that we're done here
   printf("%c",GDP_SYMBOL_SOF);
   printf("%c",GDP_OPCODE_EXIT);
   fflush(stdout);


   fclose(gCamin);
   fclose(gCamout);
   return 0;
}

//******************************************************************************
// gutil_getch
// Grab a single char from stdin without waiting for the user to press ENTER.
//
// Russ [2012-11-15]: Taken from (and used verbatim):
// http://stackoverflow.com/a/912796
//
// Returns the read character.  Returns NULL char on error.
//******************************************************************************
static char getch(void)
{
   char buf = 0;
   struct termios old = {0};
   if (tcgetattr(0, &old) < 0)
      perror("tcsetattr()");
   old.c_lflag &= ~ICANON;
   old.c_lflag &= ~ECHO;
   old.c_cc[VMIN] = 1;
   old.c_cc[VTIME] = 0;
   if (tcsetattr(0, TCSANOW, &old) < 0)
      perror("tcsetattr ICANON");
   if (read(0, &buf, 1) < 0)
      perror ("read()");
   old.c_lflag |= ICANON;
   old.c_lflag |= ECHO;
   if (tcsetattr(0, TCSADRAIN, &old) < 0)
      perror ("tcsetattr ~ICANON");
   return (buf);
}
