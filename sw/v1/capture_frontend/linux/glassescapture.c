//**************************************************************************************************
// glassescapstream.c
//
// Russ Bielawski
// 2012-10-29: created as captureStreamDual.c
// 2012-11-12: split out stream mode functionality
//**************************************************************************************************


//**************************************************************************************************
// includes
//
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <assert.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>

#include "glasses.h"


//**************************************************************************************************
// defines / constants
//
#define NS_PER_SEC            (1000*1000*1000)
#define MAX_CAMS              (2)
#define FRAME_X_Y             (112)
#define FRAME_LEN             (FRAME_X_Y*FRAME_X_Y)
#define SCALINGVAL            (4)
#define ESC_KEY               (27)
#define OUTPATH_MAX_LEN       (256)

#define dbgPrintOp(msg,opcode) do { \
                                  if(0!=gFlagDbgOutputOn) \
                                  { \
                                     fprintf(stderr,msg,opcode); \
                                  } \
                               } while(0)

//**************************************************************************************************
// globals
//
FILE *gCamin,*gCamout;
unsigned gFlagUserCliValid;
unsigned gFlagUserCliHelp;
unsigned gFlagDbgOutputOn;
unsigned gFlagNoWriteVideo;
unsigned gFlagUseBluetooth;


//**************************************************************************************************
// local function prototypes
//
static void printusage(char *progname);
static void printhelp(char *progname);
static int  parseargs(int argc, char **argv);
static void terminate(int xx);


//**************************************************************************************************
// main
//
int main(int argc, char** argv)
{
   char indat[256*1024];    // huge because I am a lazy man
   char *indatloc;
   int readcnt;
   int totallen;

   unsigned numcams;


   // process user cli
   gFlagUserCliValid=0;
   gFlagUserCliHelp=0;
   gFlagDbgOutputOn=0;
   gFlagNoWriteVideo=0;
   gFlagUseBluetooth=0;
   if(0 != parseargs(argc,argv))
   {
      printusage(argv[0]);
      exit(1);
   }
   if(0 == gFlagUserCliValid)
   {
      printusage(argv[0]);
      exit(1);
   }
   if(0 != gFlagUserCliHelp)
   {
      printhelp(argv[0]);
      exit(0);
   }

   if(0 == gFlagUseBluetooth)
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
   fputc((char)SYMBOL_SOF,gCamout);
   dbgPrintOp("tx: 0x%02X\n", (unsigned char)SYMBOL_SOF);
   fputc((char)OPCODE_REQ_NUM_CAMS,gCamout);
   fflush(gCamout);
   dbgPrintOp("tx: 0x%02X\n", (unsigned char)OPCODE_REQ_NUM_CAMS);

   readuntilchar(gCamin,SYMBOL_SOF);
   dbgPrintOp("rx: 0x%02X\n", (unsigned char)SYMBOL_SOF);
   indat[0] = readchar(gCamin);
   dbgPrintOp("rx: 0x%02X\n", (unsigned char)indat[0]);
   if(OPCODE_RESP_NUM_CAMS != (unsigned char)indat[0])
   {
      assert(OPCODE_RESP_NUM_CAMS == (unsigned char)indat[0]);
   }
   numcams = readchar(gCamin);
   dbgPrintOp("rx: 0x%02X\n", (unsigned char)numcams);
   assert((0 < numcams) && (MAX_CAMS >= numcams));

   // print numcams on stdout for pipe interface
   printf("%c",SYMBOL_SOF);
   printf("%c",OPCODE_RESP_NUM_CAMS);
   printf("%c",(unsigned char)numcams);
   fflush(stdout);


   // TODO: should be a function
   fputc((char)SYMBOL_SOF,gCamout);
   fputc((char)OPCODE_START_CAPTURE,gCamout);
   fflush(gCamout);
   dbgPrintOp("tx: 0x%02X\n", (unsigned char)SYMBOL_SOF);
   dbgPrintOp("tx: 0x%02X\n", (unsigned char)OPCODE_START_CAPTURE);

   readuntilchar(gCamin,SYMBOL_SOF);
   dbgPrintOp("rx: 0x%02X\n", (unsigned char)SYMBOL_SOF);
   indat[0] = readchar(gCamin);
   dbgPrintOp("rx: 0x%02X\n", (unsigned char)indat[0]);
   if(OPCODE_START_ACK != (unsigned char)indat[0])
   {
      cleanupcamconn(gCamout);
      assert(OPCODE_START_ACK == (unsigned char)indat[0]);
   }

   // we want to gracefully close the remove device connection now that we've started it
   signal(SIGHUP, terminate);
   signal(SIGINT, terminate);
   signal(SIGABRT, terminate);
   signal(SIGQUIT, terminate);
   signal(SIGTERM, terminate);
   // broken pipe
   signal(SIGPIPE, terminate);


   while(1)
   {
      readuntilchar(gCamin,SYMBOL_SOF);
      dbgPrintOp("rx: 0x%02X\n", (unsigned char)SYMBOL_SOF);
      printf("%c",SYMBOL_SOF);
      indat[0] = readchar(gCamin);
      dbgPrintOp("rx: 0x%02X\n", (unsigned char)indat[0]);
      printf("%c",indat[0]);
      if(OPCODE_FRAME != (unsigned char)indat[0])
      {
         cleanupcamconn(gCamout);
         assert(OPCODE_FRAME == (unsigned char)indat[0]);
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
   }


   // finish connection
   // TODO: should be a function
   fputc((char)SYMBOL_SOF,gCamout);
   fputc((char)OPCODE_STOP_CAPTURE,gCamout);
   fflush(gCamout);

   readuntilchar(gCamin,SYMBOL_SOF);
   dbgPrintOp("rx: 0x%02X\n", (unsigned char)SYMBOL_SOF);
   indat[0] = readchar(gCamin);
   dbgPrintOp("rx: 0x%02X\n", (unsigned char)indat[0]);


   fclose(gCamin);
   fclose(gCamout);
   return 0;
}


//**************************************************************************************************
// local function definitions
//

//
// printusage: prints a usage string for the program
//
static void printusage(char *progname)
{
   fprintf(stderr, "Usage: %s [-b] [-s]\n", progname);
}

//
// printhelp: prints the help for the program
//
static void printhelp(char *progname)
{
   printusage(progname);
   fprintf(stderr,"TODO: help not well written\n");
   fprintf(stderr,"\n");
   fprintf(stderr,"quick and dirty argument descriptions:\n");
   fprintf(stderr,"  -b         attempt to connect to a bluetooth module already bonded on /dev/rfcomm0\n");
   fprintf(stderr,"  -d         enable debug output (shows communication between glasses and this program\n");
   fprintf(stderr,"  -h         show help and exit\n");
}

//
// parseargs: parse cli
//
static int parseargs(int argc, char **argv)
{
   char cc;
   extern char *optarg;

   errno=0;

   gFlagUserCliValid = 1;
   while ((cc = getopt(argc, argv, "bdh")) != EOF)
   {
      switch (cc) {
         case 'b':
            gFlagUseBluetooth = 1;
            break;
         case 'd':
            gFlagDbgOutputOn = 1;
            break;
         case 'h':
            gFlagUserCliHelp = 1;
            break;
         default:
            errno=EINVAL;
            break;
      }
   }

   return(errno);
}

//
// terminate: signal handler to cleanup the camera connection and exit
//
static void terminate(int xx)
{
   cleanupcamconn(gCamout);
   // TODO: perhaps we shouldn't ALWAYS exit with 0
   exit(0);
}

