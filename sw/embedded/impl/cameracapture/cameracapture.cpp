#include "stony.h"
#include "stonymask_nomask.h"

// teensy and arduino stuff
#include "pins_arduino.h"
#include "core_pins.h"
#include "usb_serial.h"


//**************************************************************************************************
// global constants
#define    NUMCAMS   (1)
#define    BAUDRATE  (921600)

//#define DATACONN_USB
#define DATACONN_BLUETOOTH
#if (defined(DATACONN_USB) && defined(DATACONN_BLUETOOTH))
# error "Both DATACONN_USB and DATACONN_BLUETOOTH defined!"
#endif

// thanks to Boyan
#define SMH_VREF_3V3    41     //vref for 3.3 volt
#define SMH_NBIAS_3V3   50     //nbias for 3.3 volts
#define SMH_AOBIAS_3V3  37     //aobias for 3.3 volts
#define SMH_GAIN_3V3    2//3   //amp gain for 3.3 volts 
#define SMH_SELAMP_3V3  1


const char SYMBOL_SOF           = (char)0xFF;

const char OPCODE_START         = (char)0x01;
const char OPCODE_STOP          = (char)0x02;
const char OPCODE_SINGLE_FRAME  = (char)0x04;
const char OPCODE_START_ACK     = (char)0x81;
const char OPCODE_STOP_ACK      = (char)0x82;
const char OPCODE_FRAME         = (char)0x84;

const char OPCODE_REQ_NUM_CAMS  = (char)0x21;
const char OPCODE_RESP_NUM_CAMS = (char)0xA1;

const char PIN_LED = 13;

const char PIN_RESP   = 2;
const char PIN_INCP   = 3;
const char PIN_RESV   = 4;
const char PIN_INCV   = 5;
const char PIN_INPHI  = 6;
const char PIN_ANALOG = A9;


//**************************************************************************************************
// global data
int gFlagCaptureRunning;

Stonyman stonycam;

#if defined(DATACONN_BLUETOOTH)
// for bluetooth over UART
#include "HardwareSerial.h"
HardwareSerial Uart = HardwareSerial();
# define DataConn Uart
#elif defined(DATACONN_USB)
# define DataConn Serial
#else
# error "Must define either DATACONN_USB or DATACONN_BLUETOOTH!"
#endif


//**************************************************************************************************
// function prototypes
void setup();
void loop();
void frameCaptureAndTx();


//**************************************************************************************************
// function definitions
// arduino-ish main
extern "C" int main(void)
{
   // Arduino's main() function just calls setup() and loop()....
   setup();
   while (1) {
      loop();
      yield();
   }
}

void setup()
{
   DataConn.begin(BAUDRATE);
   gFlagCaptureRunning = 0;
   pinMode(13,OUTPUT);
   digitalWriteFast(PIN_LED,1);

   // raw: for 5v0
   //(void)stonycam.init( PIN_RESP, PIN_INCP, PIN_RESV, PIN_INCV, PIN_INPHI, PIN_ANALOG,
   //                     Stonyman::DEFAULT_VREF_5V0, Stonyman::DEFAULT_NBIAS_5V0,
   //                     Stonyman::DEFAULT_AOBIAS_5V0, Stonyman::DEFAULT_GAIN_5V0,
   //                     Stonyman::DEFAULT_SELAMP_5V0 );
   // amp: for 3v3
   //(void)stonycam.init( PIN_RESP, PIN_INCP, PIN_RESV, PIN_INCV, PIN_INPHI, PIN_ANALOG,
   //                     37,48,48,1,1);
   // russ: Boyan's values
   (void)stonycam.init( PIN_RESP, PIN_INCP, PIN_RESV, PIN_INCV, PIN_INPHI, PIN_ANALOG,
                        SMH_VREF_3V3,SMH_NBIAS_3V3,SMH_AOBIAS_3V3,SMH_GAIN_3V3,
                        SMH_SELAMP_3V3);
}

void loop()
{
   char opcode,cc;

  // TODO: for now, the code has no requests for tuning parameters

   if(0 == gFlagCaptureRunning)
   {
      do
      {
         while(!DataConn.available());
         cc = DataConn.read();
      } while(SYMBOL_SOF != cc);

      // grab data
      while(!DataConn.available());
      opcode = DataConn.read();

      if(OPCODE_START == opcode)
      {
         gFlagCaptureRunning = 1;
         DataConn.print(SYMBOL_SOF);
         DataConn.print(OPCODE_START_ACK);
      }
      else if(OPCODE_SINGLE_FRAME == opcode)
      {
         digitalWriteFast(PIN_LED,0);
         frameCaptureAndTx();
         digitalWriteFast(PIN_LED,1);
      }
      else if(OPCODE_REQ_NUM_CAMS)
      {
         DataConn.write(SYMBOL_SOF);
         DataConn.write(OPCODE_RESP_NUM_CAMS);
         DataConn.write((char)NUMCAMS);
      }
      // otherwise, ignore
   }
   else
   {
      // check for stop command
      while(DataConn.available())
      {
         do
         {
             cc=DataConn.read();
         } while((DataConn.available()) && (SYMBOL_SOF != cc));

         if(SYMBOL_SOF != cc)
         {
            continue;
         }

         // FIXME: if we ONLY get an SOF, we're stuck here!
         while(!DataConn.available());
         opcode = DataConn.read();

         if(OPCODE_STOP == opcode)
         {
            gFlagCaptureRunning = 0;
            DataConn.print(OPCODE_STOP_ACK);
            return;
         }
         // otherwise ignore

         // russ: even when other commands are added to change things (like the sample resolution
         // or the framerate) these will only be accepted when a capture is not running
      }

      digitalWriteFast(PIN_LED,0);
      frameCaptureAndTx();
      digitalWriteFast(PIN_LED,1);
   }
}

void frameCaptureAndTx()
{
   short ii,jj;
   short imrow[112];
   char  imrowsc[112];

   DataConn.print(SYMBOL_SOF);
   DataConn.print(OPCODE_FRAME);

   // russ: for debugging
   //for(ii=0; ii<112*112; ++ii) Serial.print(0);
   for(ii = 0; ii < 112; ++ii)
   {
      stonycam.getImage(imrow,ii,1,1,0,112,1);
      // FIXME russ: not efficient
      for(jj = 0; jj < 112; ++jj)
      {
         //imrowsc[jj]=255-imrow[jj]+stonymask[(112*ii)+jj];
         imrowsc[jj]=imrow[jj]-stonymask[(112*ii)+jj];
         // russ: try this if the masked version is not working
         //imrowsc[jj]=128-imrow[jj];
         DataConn.print((char)(imrowsc[jj]));
      }
   }
}

