////////////////////////////////////////////////////////////////////////////////////////////////////
// insight-serv.c
//
// Russ Bielawski
// University of Michigan
// 2012-11-14: created
// 2013-03-01: runs on smartfusion uClinux (no fork()).  discriminates good vs bad requests (good
//             requests start with the string "GET" and the rest is ignored).
// 2013-06-18: added support for multiple cameras.  however, only CAM0 is actually being used, and
//             its data is being transmitted thrice as if to appear to be three distinct cameras.
//             this is because the APB3 bus cannot keep up with all three cameras and the FIFOs
//             overflow.  by only using CAM0, all the other FIFOs overflow, but we can keep up with
//             CAM0.
// 2013-06-25: adding in vfork functionality
////////////////////////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////////////////////////
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
// camera calibration mask
#include "stonymask_nomask.h"
//#include "stonymask_cam12_sf-test.h"
//#include "stonymask_cam12_sf.h"
//#include "stonymask_cam12_3v3_sf.h"


////////////////////////////////////////////////////////////////////////////////////////////////////
// defines / constants
//
typedef  unsigned long   uint32;
typedef  unsigned short  uint16;
typedef  unsigned char   uint8;

#define DEFAULT_PORT              (80)
#define MAX_CONNS                 (1)
#define REQ_MAX_LEN               (1024)  // Bytes (chosen arbitrarily)
#define RESOLUTION_ROWS           (112)
#define RESOLUTION_COLS           (112)
#define RESOLUTION                (RESOLUTION_ROWS*RESOLUTION_COLS)

#define SYMBOL_SOF                ((uint8)0xFF)

#define OPCODE_START              ((uint8)0x01)
#define OPCODE_STOP               ((uint8)0x02)
#define OPCODE_SINGLE_FRAME       ((uint8)0x04)
#define OPCODE_START_ACK          ((uint8)0x81)
#define OPCODE_STOP_ACK           ((uint8)0x82)
#define OPCODE_FRAME              ((uint8)0x84)

#define OPCODE_REQ_NUM_CAMS       ((uint8)0x21)
#define OPCODE_RESP_NUM_CAMS      ((uint8)0xA1)

#define REG_BASE_ADDR             (0x40060000ul)
#define REG_MASK_CAM_IND          (0x00000080ul)
#define REG_CAM_REG_SPACE_WIDTH   (0x00000020ul)
#define REG_SET_OFFSET_CAM0       (REG_MASK_CAM_IND|(REG_CAM_REG_SPACE_WIDTH*0))
#define REG_SET_OFFSET_CAM1       (REG_MASK_CAM_IND|(REG_CAM_REG_SPACE_WIDTH*1))
#define REG_SET_OFFSET_CAM2       (REG_MASK_CAM_IND|(REG_CAM_REG_SPACE_WIDTH*2))
#define REG_SET_OFFSET_CAM3       (REG_MASK_CAM_IND|(REG_CAM_REG_SPACE_WIDTH*3))
#define REG_OFFSET_GLOB_STARTCAP  (0x00000000ul)
#define REG_OFFSET_GLOB_STATUS    (0x00000000ul)
#define REG_OFFSET_CAMX_STATUS    (0x00000000ul)
#define REG_OFFSET_CAMX_PXDATA    (0x00000004ul)

#define REG_CTRL                  (*((volatile uint32*)(REG_BASE_ADDR+REG_OFFSET_GLOB_STARTCAP)))
#define REG_FLAGS                 (*((volatile uint32*)(REG_BASE_ADDR+REG_OFFSET_GLOB_STATUS)))
#define REG_CAMX_BASE(xx)         (REG_BASE_ADDR+REG_MASK_CAM_IND+(REG_CAM_REG_SPACE_WIDTH*(xx)))
#define REG_CAMX_STATUS(xx)       (*((volatile uint32*)(REG_CAMX_BASE(xx)+REG_OFFSET_CAMX_STATUS)))
#define REG_CAMX_PXDATA(xx)       (*((volatile uint32*)(REG_CAMX_BASE(xx)+REG_OFFSET_CAMX_PXDATA)))

#define FLAG_SHIFT_BUSY           (0u)
#define FLAG_SHIFT_EMPTY          (0u)
#define FLAG_SHIFT_FULL           (1u)
#define FLAG_SHIFT_AFULL          (2u)

#define NUM_CAMS                  (3)
#define NUM_BUFS_PER_CAM          (1) // currently not implemented, leave as 1

typedef struct
{
   uint16 len;
} img_buf_meta_t;

const char RESP_BAD_REQUEST[] = "HTTP/1.0 400 Bad Request\n";
// a success header is not currently used
const char RESP_SUCCESS_HEADER[] = "HTTP/1.0 200 OK\n";
const char RESP_FRAME_HEADER[] = {SYMBOL_SOF,OPCODE_FRAME};


////////////////////////////////////////////////////////////////////////////////////////////////////
// globals
//
          unsigned         g_flag_print_help;
          unsigned         g_flag_background_capture_mode;
          uint8            img_buf_cur_idx;  // all cameras share current buffer index
volatile  img_buf_meta_t   img_buf_meta  [NUM_CAMS]  [NUM_BUFS_PER_CAM];
          uint8*           img_buf       [NUM_CAMS]  [NUM_BUFS_PER_CAM];


////////////////////////////////////////////////////////////////////////////////////////////////////
// local function prototypes
//
static void do_init();
static void start_backend(char *progname);
static void do_backend();
static void do_frontend();
static void request_handler(int sd);
static void request_send_data(int sd);
static void print_usage(char *progname);
static void print_help(char *progname);
static int  parse_args(int argc, char **argv);


////////////////////////////////////////////////////////////////////////////////////////////////////
// main
//
int main(int argc, char** argv)
{
   // parse cli
   g_flag_print_help=0;
   g_flag_background_capture_mode=0;
   parse_args(argc,argv);
   if(0!=g_flag_print_help)
   {
      print_help(argv[0]);
      exit(0);
   }


   // the backend and frontend run a seperate processes in the same address space
   // the frontend initializes the globals before starting the backend
   // for that reason, globals are not initialized here!


   if(0!=g_flag_background_capture_mode)
   {
      // TODO: probably should check to ensure that the backend is started by the frontend
      do_backend();
   }
   else
   {
      do_init();
      start_backend(argv[0]);
      do_frontend();
   }
   
   // unreachable
   return -1;
}


////////////////////////////////////////////////////////////////////////////////////////////////////
// local function definitions
//

//
// do_init: initialize global variables
//
static void do_init()
{
   unsigned ii,jj;


   // initialize globals
   img_buf_cur_idx=0;
   for(ii=0; ii<NUM_CAMS; ++ii)
   {
      for(jj=0; jj<NUM_BUFS_PER_CAM; ++jj)
      {
         img_buf_meta[ii][jj].len=0;
         // malloc the image buffers (must be malloc'd because of the size of the data)
         img_buf[ii][jj] = (uint8*)malloc(RESOLUTION*sizeof(uint8));
         if(NULL==img_buf[ii][jj])
         {
            fprintf( stderr,"couldn't malloc %d bytes for the image buffer\n",
                     RESOLUTION*sizeof(uint8) );
            exit(1);
         }
      }
   }
}

//
// start_backend: fork and exec this binary with the backend flag
//
static void start_backend(char *progname)
{
   // start the backend
   if(0==vfork())
   {
      // child (reexec self with backend flag)
      fprintf(stderr,"no forkin way!\n");
      fflush(stderr);
      // TODO: probably a good idea to handle any possible error
      (void)execl(progname,progname,"-b");
      // the below output never happens!
      fprintf(stderr,"execl returned!  error!\n");
      fflush(stderr);
      perror(errno);
      fflush(stderr);
      // only reachable if there is an error
      exit(-1);
   }
   //else if(0>pid)
   //{
   //   // TODO: handle error
   //}
}

//
// do_backend: the backend interfaces with the FPGA
//
static void do_backend()
{
   // TODO
   fprintf(stderr,"backend starting\n");
   fflush(stderr);
}

//
// do_frontend: the frontend serves the HTTP interface
//
static void do_frontend()
{
   int sd_listen, sd_client;
   struct sockaddr_in sockaddr_server, sockaddr_client;
   unsigned len;


   fprintf(stderr,"frontend starting\n");


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

      request_handler(sd_client);
      if(0 > close(sd_client))
      {
         fprintf(stderr,"ERROR: close call failed\n");
         fflush(stderr);
         exit(1);
      }
   }
}

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
   uint32 regflags;
   uint32 regdata;
   uint16 pixelcount[NUM_CAMS];
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


   // FIXME: best practice dictates that in the even of hardware failure,
   //        we should NOT go into an infinite loop!
   // BUSY wait (get it!?)
   do {/*nothing*/} while(0!=((1<<FLAG_SHIFT_BUSY)&REG_FLAGS));
   REG_CTRL = 1ul;

#define FORCE_SINGLE_CAM_READ  (0)
#if (0!=(FORCE_SINGLE_CAM_READ)) // code for single camera (CAM0)
   // only actually reading data from CAM0
   pixelcount[0]=0;
   while(RESOLUTION>pixelcount[0])
   {
      regflags = REG_CAMX_STATUS(0);
      if(0 == ((1<<FLAG_SHIFT_EMPTY)&regflags))
      {
         regdata=REG_CAMX_PXDATA(0);
         img_buf[0][0][pixelcount[0]]   = (regdata>> 0)&0xFF-stonymask[pixelcount[0]];
         img_buf[0][0][pixelcount[0]+1] = (regdata>> 8)&0xFF-stonymask[pixelcount[0]+1];
         img_buf[0][0][pixelcount[0]+2] = (regdata>>16)&0xFF-stonymask[pixelcount[0]+2];
         img_buf[0][0][pixelcount[0]+3] = (regdata>>24)&0xFF-stonymask[pixelcount[0]+3];
         pixelcount[0]+=4;
      }
   }
#else
   for(ii=0; ii<2; ++ii)
   {
      pixelcount[ii]=0;
   }
   while((RESOLUTION>pixelcount[0])||(RESOLUTION>pixelcount[1]))
   {
      for(ii=0; ii<2; ++ii)
      {
         regflags = REG_CAMX_STATUS(ii);
         if(0 == ((1<<FLAG_SHIFT_EMPTY)&regflags))
         {
            regdata=REG_CAMX_PXDATA(ii);
            img_buf[ii][0][pixelcount[ii]]   = (regdata>> 0)&0xFF-stonymask[pixelcount[ii]];
            img_buf[ii][0][pixelcount[ii]+1] = (regdata>> 8)&0xFF-stonymask[pixelcount[ii]+1];
            img_buf[ii][0][pixelcount[ii]+2] = (regdata>>16)&0xFF-stonymask[pixelcount[ii]+2];
            img_buf[ii][0][pixelcount[ii]+3] = (regdata>>24)&0xFF-stonymask[pixelcount[ii]+3];
            pixelcount[ii]+=4;
         }
      }
   }
#endif


   // transmit data
#define MIMIC_THREE_CAMS_WITH_CAM0  (0)
#if (0!=(MIMIC_THREE_CAMS_WITH_CAM0)) // code for single camera (CAM0)
   // mimic 3 cameras
   for(ii=0;ii<NUM_CAMS;++ii)
   {
      send_len_ret = send(sd, (const void*)(img_buf[0][0]), RESOLUTION, 0);
      fprintf(stderr,"send_len: %d\n",send_len_ret);
      if(RESOLUTION != send_len_ret)
      {
         fprintf(stderr, "request_send_data: send call returns wrong length (%d)\n",send_len_ret);
         fflush(stderr);
         exit(1);
      }
   }
#else
   for(ii=0;ii<2;++ii)
   {
      send_len_ret = send(sd, (const void*)(img_buf[ii][0]), RESOLUTION, 0);
      fprintf(stderr,"send_len: %d\n",send_len_ret);
      if(RESOLUTION != send_len_ret)
      {
         fprintf(stderr, "request_send_data: send call returns wrong length (%d)\n",send_len_ret);
         fflush(stderr);
         exit(1);
      }
   }
#endif
}

//
// print_usage: prints a usage string for the program
//
static void print_usage(char *progname)
{
   fprintf(stderr, "Usage: %s\n", progname);
}

//
// print_help: prints the help for the program
//
static void print_help(char *progname)
{
   print_usage(progname);
   fprintf(stderr, "No flags need to be supplied to this program.\n");
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
      if((cc = getopt(argc, argv, "hb")) == EOF)
      {
         break;
      }
      switch (cc) {
         case 'h':
            g_flag_print_help=1;
            break;
         case 'b':
            g_flag_background_capture_mode=1;
            break;
         default:
            errno=EINVAL;
            break;
      }
   }

   return(errno);
}
