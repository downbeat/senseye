//**************************************************************************************************
// insight-serv.c
//
// Russ Bielawski
// 2012-11-14: created
// 2013-03-01: runs on smartfusion uClinux (no fork()).  discriminates good vs bad requests (good
//             requests start with the string "GET" and the rest is ignored).
//**************************************************************************************************


//**************************************************************************************************
// includes
//
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <time.h>
#include <assert.h>
#include <signal.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/socket.h>
#include <arpa/inet.h>


//**************************************************************************************************
// defines / constants
//
#define DEFAULT_PORT            (8080)
#define MAX_CONNS               (1)
#define REQ_MAX_LEN             (1024)  // Bytes (chosen arbitrarily)


//**************************************************************************************************
// globals
//


//**************************************************************************************************
// local function prototypes
//
static void request_handler(int sd);
/*static void printusage(char *progname);
static void printhelp(char *progname);
static int  parseargs(int argc, char **argv);*/


//**************************************************************************************************
// main
//
int main(int argc, char** argv)
{
   int sd_listen, sd_client;
   struct sockaddr_in sockaddr_server, sockaddr_client;
   unsigned len;
   pid_t pid;


   // start up the server
   sd_listen = socket(AF_INET, SOCK_STREAM, 0);
   if(0 > sd_listen)
   {
      fprintf(stderr,"ERROR: can't create listening socket\n");
      exit(1);
   }


   // fill in socket details
   memset(&sockaddr_server,0,sizeof(sockaddr_server));
   sockaddr_server.sin_family      = AF_INET;
   sockaddr_server.sin_addr.s_addr = htonl(INADDR_ANY);
   sockaddr_server.sin_port        = htons(DEFAULT_PORT);


   // bind
   if(0 > bind(sd_listen, (struct sockaddr*)&sockaddr_server, sizeof(sockaddr_server)))
   {
      fprintf(stderr,"ERROR: could not bind listening socket\n");
      exit(1);
   }

   // listen
   if(0 > listen(sd_listen, MAX_CONNS))
   {
      fprintf(stderr,"ERROR: listen call failed\n");
      exit(1);
   }


   // and away we go
   while(1)
   {
      sd_client = accept(sd_listen, (struct sockaddr*)&(sockaddr_client), &len);
      if(0 > sd_client)
      {
         fprintf(stderr,"ERROR: accept call failed\n");
         exit(1);
      }

// FIXME: no fork() in uClinux
//      pid = fork();
//      if(0 == pid)
//      {
//         // child
         request_handler(sd_client);
         if(0 > close(sd_client))
         {
            fprintf(stderr,"ERROR: close call failed\n");
            fflush(stderr);
            exit(1);
         }
//         exit(0);
//      }
//      else
//      {
//         // parent
//
//         // just close socket
//         if(0 > close(sd_client))
//         {
//            fprintf(stderr,"ERROR: close call failed\n");
//            fflush(stderr);
//            exit(1);
//         }
//
//         // TODO russ: should I wait on the child?  (I don't think so)
//      }
   }

   // unreachable
   return -1;
}


//**************************************************************************************************
// local function definitions
//
static void request_handler(int sd)
{
   unsigned ii;
   uint8_t recvBuf[REQ_MAX_LEN];
   unsigned recvLen, recvLenTotal;
   unsigned flag_bad_request;

   flag_bad_request=0;

   recvLenTotal=0;
   recvBuf[0] = '\0';
   do
   {
      recvLen = recv(sd, (void*)(&(recvBuf[recvLenTotal])), (REQ_MAX_LEN-recvLenTotal), 0);
      if(0 > recvLen)
      {
         if(EAGAIN == errno)
         {
            // do nothing, just try again later
         }
         else
         {
            fprintf(stderr, "request_handler: recv call returns failure");
            fflush(stderr);
            exit(1);
         }
      }
      else if(0 == recvLen)
      {
         flag_bad_request = 1;
      }
      else
      {
         recvLenTotal += recvLen;
         for(ii=0; ii<recvLen; ++ii)
         {
            // I'll just treat a null char as a new line for now!
            // TODO russ: is that a good thing to do?  (perhaps that should be a bad request)
            if(    ('\0' == recvBuf[recvLenTotal-recvLen+ii])
                || ('\n' == recvBuf[recvLenTotal-recvLen+ii]) )
            {
               // null terminate the request string (we'll ignore the rest)
               recvBuf[recvLenTotal-recvLen+ii] = '\0';
               recvLenTotal = recvLenTotal-recvLen+ii;
               break;
            }
         }
      }
   } while((REQ_MAX_LEN > recvLenTotal) && (0 != recvLen) && ('\0' != recvBuf[recvLenTotal]));

   if(0 == flag_bad_request)
   {
      if((3 <= recvLenTotal) && ('G' == recvBuf[0]) && ('E' == recvBuf[1]) && ('T' == recvBuf[2]))
      {
         // good request!
         // return data
         // TODO!
         fprintf(stderr, "good request!\n");
      }
      else
      {
         // bad request :(
         // TODO!
         flag_bad_request=1;
         fprintf(stderr, "bad request :(\n");
      }
   }
}

/* TODO
//
// printusage: prints a usage string for the program
//
static void printusage(char *progname)
{
   fprintf(stderr, "Usage: %s [-p port]\n", progname);
}

//
// printhelp: prints the help for the program
//
static void printhelp(char *progname)
{
   printusage(progname);
   fprintf(stderr,"TODO: NO HELP WRITTEN\n");
}

//
// parseargs: parse cli
//
static int parseargs(int argc, char **argv)
{
   char cc;
   extern char *optarg;

   errno=0;

   while ((cc = getopt(argc, argv, "ho:qr")) != EOF)
   {
      switch (cc) {
         case 'h':
            g_flag_print_help=1;
            break;
         case 'p':
            g_port=atoi(optarg);
            break;
         default:
            errno=EINVAL;
            break;
      }
   }

   return(errno);
}
*/
