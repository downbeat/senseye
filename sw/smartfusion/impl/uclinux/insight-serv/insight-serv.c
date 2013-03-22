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
typedef  unsigned long   uint32;
typedef  unsigned short  uint16;
typedef  unsigned char   uint8;

#define DEFAULT_PORT            (80)
#define MAX_CONNS               (1)
#define REQ_MAX_LEN             (1024)  // Bytes (chosen arbitrarily)
#define RESOLUTION_ROWS         (112)
#define RESOLUTION_COLS         (112)
#define RESOLUTION              (RESOLUTION_ROWS*RESOLUTION_COLS)

#define SYMBOL_SOF              ((uint8)0xFF)

#define OPCODE_START            ((uint8)0x01)
#define OPCODE_STOP             ((uint8)0x02)
#define OPCODE_SINGLE_FRAME     ((uint8)0x04)
#define OPCODE_START_ACK        ((uint8)0x81)
#define OPCODE_STOP_ACK         ((uint8)0x82)
#define OPCODE_FRAME            ((uint8)0x84)

#define OPCODE_REQ_NUM_CAMS     ((uint8)0x21)
#define OPCODE_RESP_NUM_CAMS    ((uint8)0xA1)

#define REG_BASE_ADDR           (0x40060000ul)
#define REG_OFFSET_STATUS       (0x00000000ul)
#define REG_OFFSET_DATA         (0x00000004ul)

#define REG_CTRL                (*((volatile uint32*)(REG_BASE_ADDR+REG_OFFSET_STATUS)))
#define REG_FLAGS               (*((volatile uint32*)(REG_BASE_ADDR+REG_OFFSET_STATUS)))
#define REG_DATA                (*((volatile uint32*)(REG_BASE_ADDR+REG_OFFSET_DATA)))

#define FLAG_SHIFT_FULL         (0u)
#define FLAG_SHIFT_EMPTY        (1u)

const char RESP_BAD_REQUEST[] = "HTTP/1.0 400 Bad Request\n";
// a success header is not currently used
const char RESP_SUCCESS_HEADER[] = "HTTP/1.0 200 OK\n";
const char RESP_FRAME_HEADER[] = {SYMBOL_SOF,OPCODE_FRAME};


//**************************************************************************************************
// globals
//
uint8 *imgbuf;


//**************************************************************************************************
// local function prototypes
//
static void request_handler(int sd);
static void request_send_data(int sd);
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


   // malloc the image buffer (this is required for uclinux)
   imgbuf = (uint8*)malloc(RESOLUTION*sizeof(uint8));
   if(NULL==imgbuf)
   {
      fprintf(stderr,"couldn't malloc %d bytes for the image buffer\n");
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

// FIXME: no fork() in uClinux TODO: use vfork() instead (requires exec() to be called)?
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
   unsigned send_len_ret;

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
            // I'll just treat a null char as a new line
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
         // TODO: remove debug output (maybe)
         fprintf(stderr, "good request!\n");
         /*FIXME put this back in (right?)
          * send_len_ret = send(sd, (const void*)(&RESP_SUCCESS_HEADER), sizeof(RESP_SUCCESS_HEADER), 0);
         if(sizeof(RESP_SUCCESS_HEADER) != send_len_ret)
         {
            fprintf(stderr, "request_handler: send call returns wrong length");
            fflush(stderr);
            exit(1);
         }*/

         // send data!
         request_send_data(sd);
      }
      else
      {
         // bad request :(
         // TODO: remove debug output (maybe)
         flag_bad_request=1; // unnecessary
         fprintf(stderr, "bad request :(\n");
         send_len_ret = send(sd, (const void*)(&RESP_BAD_REQUEST), sizeof(RESP_BAD_REQUEST), 0);
         if(sizeof(RESP_BAD_REQUEST) != send_len_ret)
         {
            fprintf(stderr, "request_handler: send call returns wrong length");
            fflush(stderr);
            exit(1);
         }
      }
   }
}

static void request_send_data(int sd)
{
   unsigned ii;
   uint8 regflags;
   uint8 regdata;
   uint16 pixelcount;
   unsigned send_len_ret;


   // send header
   send_len_ret = send(sd, (const void*)(&RESP_FRAME_HEADER), sizeof(RESP_FRAME_HEADER), 0);
   fprintf(stderr,"send_len: %d\n",send_len_ret);
   if(sizeof(RESP_FRAME_HEADER) != send_len_ret)
   {
      fprintf(stderr, "request_send_data: send call returns wrong length (%d)\n",send_len_ret);
      fflush(stderr);
      exit(1);
   }


   pixelcount=0;

   // TODO: this needs to check a busy flag!

   REG_CTRL = 0x01;

   while(RESOLUTION>pixelcount)
   {
      regflags = REG_FLAGS;
      if(0 == ((1<<FLAG_SHIFT_EMPTY)&regflags))
      {
         imgbuf[pixelcount++] = REG_DATA;
      }
   }


   // transmit data
   send_len_ret = send(sd, (const void*)(imgbuf), RESOLUTION, 0);
   if(RESOLUTION != send_len_ret)
   {
      fprintf(stderr, "request_send_data: send call returns wrong length (%d)\n",send_len_ret);
      fflush(stderr);
      exit(1);
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
