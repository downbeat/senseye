//**************************************************************************************************
// Program for capturing Stonyman imager data and transmitting the data over a serial connection.
// This program is part of the SensEye project.
// Copyright (C) 2012  The University of Michigan
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

// FIXME russ: this is a terrible software hack way to get 2 cameras working!
#include "stony_dual.h"
#include "stonymask_cam8_1.h"
#include "stonymask_cam9_2.h"

// teensy and arduino stuff
#include "pins_arduino.h"
#include "core_pins.h"
#include "usb_serial.h"


//**************************************************************************************************
// global constants
#define    NUMCAMS   (2)
#define    BAUDRATE  (921600)

#define DATACONN_USB
//#define DATACONN_BLUETOOTH
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
const char PIN_ANALOG1 = A8;
const char PIN_ANALOG2 = A9;


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
   //(void)stonycam.init( PIN_RESP, PIN_INCP, PIN_RESV, PIN_INCV, PIN_INPHI, PIN_ANALOG1, PIN_ANALOG2,
   //                     Stonyman::DEFAULT_VREF_5V0, Stonyman::DEFAULT_NBIAS_5V0,
   //                     Stonyman::DEFAULT_AOBIAS_5V0, Stonyman::DEFAULT_GAIN_5V0,
   //                     Stonyman::DEFAULT_SELAMP_5V0 );
   // amp: for 3v3
   //(void)stonycam.init( PIN_RESP, PIN_INCP, PIN_RESV, PIN_INCV, PIN_INPHI, PIN_ANALOG1, PIN_ANALOG2,
   //                     37,48,48,1,1);
   // russ: Boyan's values
   (void)stonycam.init( PIN_RESP, PIN_INCP, PIN_RESV, PIN_INCV, PIN_INPHI, PIN_ANALOG1, PIN_ANALOG2,
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
   short imrow1[112];
   char  imrowsc1[112];
   short imrow2[112];
   char  imrowsc2[112];

   DataConn.print(SYMBOL_SOF);
   DataConn.print(OPCODE_FRAME);

   // russ: for debugging
   //for(ii=0; ii<112*112*2; ++ii) DataConn.print(0);
   for(ii = 0; ii < 112; ++ii)
   {
      //if(ii == (112/2-1)) DataConn.print(OPCODE_FRAME);
      stonycam.getDualImages(imrow1,imrow2,ii,1,1,0,112,1);
      // FIXME russ: not efficient
      for(jj = 0; jj < 112; ++jj)
      {
         //imrowsc1[jj]=255-imrow1[jj]+stonymask1[(112*ii)+jj];
         imrowsc1[jj]=imrow1[jj]-stonymask1[(112*ii)+jj];
         // russ: try this if the masked version is not working
         //imrowsc2[jj]=imrow2[jj]-128;
         DataConn.print((char)(imrowsc1[jj]));
      }
      for(jj = 0; jj < 112; ++jj)
      {
         //imrowsc2[jj]=255-imrow2[jj]+stonymask2[(112*ii)+jj];
         imrowsc2[jj]=imrow2[jj]-stonymask2[(112*ii)+jj];
         // russ: try this if the masked version is not working
         //imrowsc2[jj]=imrow2[jj]-128;
         DataConn.print((char)(imrowsc2[jj]));
      }
   }
}

