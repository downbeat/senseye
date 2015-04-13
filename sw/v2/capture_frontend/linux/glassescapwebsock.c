//**************************************************************************************************
// Utility to receive streaming capture data from a serial-connected SensEye v2 device.
// This program is part of the SensEye project.
// Copyright (C) 2013  The University of Michigan
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
// glassescapwebsock.c
//
//
// Utility to capture data from a serial connected SensEye v2 device and output it on stdout
// using the glasses data protocol (GDP).
//
// Uses the glasses data protocol (GDP) v0.
//
//
// AUTHORS
// Russ Bielawski <jbielaws@umich.edu>
//
//
// VERSION   DATE        DESCRIPTION
// 01.00.00  2013-03-06  Created to grab data from insight-serv.
// 01.00.01  2013-06-26  I've been adding contortions to get 2 and 3 cameras supported
// 01.00.02  2013-09-09  Read numcams response from server (finally added support for this protocol
//                       message).
//**************************************************************************************************


//**************************************************************************************************
// includes
//
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <time.h>
#include <assert.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <sys/socket.h>
#include <arpa/inet.h>

#include "glasses.h"


//**************************************************************************************************
// defines / constants
//
#define DEBUG_VERBOSE         (0)
#define MAX_CAMS              (3)
#define FRAME_X_Y             (112)
#define FRAME_LEN             (FRAME_X_Y*FRAME_X_Y)
#define KEY_QUIT              ('q')

#define RX_LEN_RESP_NUM_CAMS  (3)
#define RX_LEN_FRAME_HEADER   (2)

#define IPADDR_MAX_LEN        (15)
#define DEFAULT_SERV_ADDR     ("141.212.106.225")
#define DEFAULT_SERV_PORT     (80)

#define dbgPrintOp(msg,opcode) do { \
                                  if(0!=gFlagDbgOutputOn) \
                                  { \
                                     fprintf(stderr,msg,opcode); \
                                  } \
                               } while(0)

//const char REQUEST[] = {SYMBOL_SOF,OPCODE_SINGLE_FRAME};
const char REQUEST[] = "GET\r\n";


//**************************************************************************************************
// globals
//
static int g_sd_insight;
static char g_serv_addr [IPADDR_MAX_LEN+1];
static unsigned g_serv_port;
static unsigned gFlagUserCliValid;
static unsigned gFlagUserCliHelp;
static unsigned gFlagDbgOutputOn;


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
   unsigned ii;
   //char cc;
   unsigned numcams;

   int ret;
   int send_len_ret;
   int recv_len;
   unsigned recv_len_total;
   unsigned char recv_buf[256*1024];    // huge because I am a lazy man

   struct sockaddr_in sockaddr_server;


   // process user cli
   gFlagUserCliValid=0;
   gFlagUserCliHelp=0;
   g_serv_addr[0]='\0';
   strncpy(g_serv_addr, DEFAULT_SERV_ADDR, IPADDR_MAX_LEN);
   g_serv_addr[IPADDR_MAX_LEN]='\0';
   g_serv_port=DEFAULT_SERV_PORT;
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

   g_sd_insight = -1;

   // we want to gracefully close the remove connection
   signal(SIGHUP, terminate);
   signal(SIGINT, terminate);
   signal(SIGABRT, terminate);
   signal(SIGQUIT, terminate);
   signal(SIGTERM, terminate);
   // broken pipe
   signal(SIGPIPE, terminate);

   // setup connection to server
   g_sd_insight = socket(AF_INET, SOCK_STREAM, 0);
   assert(0 <= g_sd_insight);

   memset(&sockaddr_server,0,sizeof(sockaddr_server));
   sockaddr_server.sin_family = AF_INET;
   sockaddr_server.sin_port = htons(g_serv_port);
   inet_aton(g_serv_addr, &sockaddr_server.sin_addr);

   ret = connect(g_sd_insight, (struct sockaddr*)(&sockaddr_server), sizeof(sockaddr_server));
   assert(0 <= ret);


   // send a simple GET request to the server
   send_len_ret = send(g_sd_insight, (const void*)(&REQUEST), sizeof(REQUEST), 0);
   assert(sizeof(REQUEST) == send_len_ret);


   // read numcams
   recv_len_total = 0;
   recv_buf[0] = '\0';
   do
   {
      recv_len = recv( g_sd_insight, (void*)(&(recv_buf[recv_len_total])),
                       RX_LEN_RESP_NUM_CAMS-recv_len_total, 0 );
      if((0 > recv_len) && ((EAGAIN == errno) || (EWOULDBLOCK == errno)))
      {
         // do nothing, just try again
         fprintf(stderr,"EAGAIN\n");
         fflush(stderr);
      }
      else if(0 > recv_len)
      {
         // error
         fprintf(stderr,"Other Error (errno=%d)!\n",errno);
         fprintf(stderr,"%s\n",strerror(errno));
         fflush(stderr);
         assert(0 < recv_len);
      }
      else
      {
         recv_len_total += recv_len;
      }
   } while(RX_LEN_RESP_NUM_CAMS > recv_len_total);

   // print numcams on stdout for pipe interface
   numcams=(unsigned)recv_buf[2];

   dbgPrintOp("rx: 0x%02X\n", (unsigned char)recv_buf[0]);
   assert((char)SYMBOL_SOF == (char)recv_buf[0]);
   printf("%c",SYMBOL_SOF);
   dbgPrintOp("rx: 0x%02X\n", (unsigned char)recv_buf[1]);
   assert((char)OPCODE_RESP_NUM_CAMS == (char)recv_buf[1]);
   printf("%c",OPCODE_RESP_NUM_CAMS);
   dbgPrintOp("rx: 0x%02X\n", (unsigned char)numcams);
   assert((0 < numcams) && (MAX_CAMS >= numcams));
   printf("%c",(unsigned char)numcams);
   fflush(stdout);


   while(1)
   {
      recv_len_total = 0;
      recv_buf[0] = '\0';
      do
      {
         recv_len = recv( g_sd_insight, (void*)(&(recv_buf[recv_len_total])), 
                          RX_LEN_FRAME_HEADER-recv_len_total, 0 );
         if((0 > recv_len) && ((EAGAIN == errno) || (EWOULDBLOCK == errno)))
         {
            // do nothing, just try again
            fprintf(stderr,"EAGAIN\n");
            fflush(stderr);
         }
         else if(0 > recv_len)
         {
            // error
            fprintf(stderr,"Other Error (errno=%d)!\n",errno);
            fprintf(stderr,"%s\n",strerror(errno));
            fflush(stderr);
            assert(0 < recv_len);
         }
         else
         {
            recv_len_total += recv_len;
         }
      } while(RX_LEN_FRAME_HEADER > recv_len_total);

      dbgPrintOp("rx: 0x%02X\n", (unsigned char)recv_buf[0]);
      assert((char)SYMBOL_SOF == (char)recv_buf[0]);
      printf("%c",SYMBOL_SOF);
      dbgPrintOp("rx: 0x%02X\n", (unsigned char)recv_buf[1]);
      assert((char)OPCODE_FRAME == (char)recv_buf[1]);
      printf("%c",OPCODE_FRAME);


      recv_len_total = 0;
      recv_buf[0] = '\0';
      do
      {
         recv_len = recv( g_sd_insight, (void*)(&(recv_buf[recv_len_total])),
                          FRAME_LEN*numcams-recv_len_total, 0 );
         if((0 > recv_len) && ((EAGAIN == errno) || (EWOULDBLOCK == errno)))
         {
            // do nothing, just try again
            fprintf(stderr,"EAGAIN\n");
            fflush(stderr);
         }
         else if(0 > recv_len)
         {
            // error
            fprintf(stderr,"Other Error (errno=%d)!\n",errno);
            fprintf(stderr,"%s\n",strerror(errno));
            fflush(stderr);
            assert(0 < recv_len);
         }
         else
         {
            recv_len_total += recv_len;
         }
      } while(FRAME_LEN*numcams > recv_len_total);
      fprintf(stderr,"(rx'd %d bytes)\n",recv_len_total);
      recv_buf[recv_len_total] = '\0';


      // pass data over stdout (and possibly in human readable format over stderr);
      for(ii=0; ii<numcams*FRAME_LEN; ++ii)
      {
#if (0!=(DEBUG_VERBOSE))
         if(0!=gFlagDbgOutputOn)
         {
            fprintf(stderr,"0x%02X ",(unsigned char)recv_buf[ii]);
         }
#endif
         printf("%c",(unsigned char)recv_buf[ii]);
      }

      fflush(stdout);
#if (0!=(DEBUG_VERBOSE))
      if(0!=gFlagDbgOutputOn)
      {
         fflush(stderr);
      }
#endif

      /* russ: removed this so that it streams video
      cc = getch();
      // look for ESC key
      if(KEY_QUIT == cc)
      {
         break;
      }*/
   }

   ret = close(g_sd_insight);
   assert(0 <= ret);


   // tell listening program that we're done here
   printf("%c",SYMBOL_SOF);
   printf("%c",SYMBOL_EXIT);
   fflush(stdout);


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
   fprintf(stderr,"press 'q' to end the program (user must have context of the video window!).\n");
   fprintf(stderr,"\n");
   fprintf(stderr,"quick and dirty argument descriptions:\n");
   fprintf(stderr,"  -a <addr>   specify IP address of capture device server as <addr>\n");
   fprintf(stderr,"  -d          enable debug output (shows communication between glasses and this program\n");
   fprintf(stderr,"  -h          show help and exit\n");
   fprintf(stderr,"  -p <port>   specify port of capture device server as <port>\n");
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
   while ((cc = getopt(argc, argv, "a:dhp:")) != EOF)
   {
      switch (cc) {
         case 'a':
            g_serv_addr[0]='\0';
            strncpy(g_serv_addr, optarg, IPADDR_MAX_LEN);
            g_serv_addr[IPADDR_MAX_LEN]='\0';
            break;
         case 'd':
            gFlagDbgOutputOn = 1;
            break;
         case 'h':
            gFlagUserCliHelp = 1;
            break;
         case 'p':
            g_serv_port = atoi(optarg);
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
   if(0 <= g_sd_insight)
   {
      close(g_sd_insight);
   }
   // TODO: perhaps we shouldn't ALWAYS exit with 0
   exit(0);
}
