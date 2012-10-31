#include "stony.h"
#include "stonymask_cam8_1.h"
#include "stonymask_cam9_2.h"


//**************************************************************************************************
// global constants
const char SYMBOL_SOF           = (char)0xDD;
const char SYMBOL_ESCAPE        = (char)0xFF;

const char OPCODE_START         = (char)0x01;
const char OPCODE_STOP          = (char)0x02;
const char OPCODE_SINGLE_FRAME  = (char)0x04;
const char OPCODE_START_ACK     = (char)0x81;
const char OPCODE_STOP_ACK      = (char)0x82;
const char OPCODE_FRAME         = (char)0x84;

const char PIN_LED = 13;

const char PIN_RESP = 8;
const char PIN_INCP = 7;
const char PIN_RESV = 6;
const char PIN_INCV = 5;
const char PIN_INPHI = 4;
const char PIN_ANALOG1 = A1;
const char PIN_ANALOG2 = A0;


//**************************************************************************************************
// global data
int gFlagCaptureRunning;

camera stonycam;


//**************************************************************************************************
// function prototypes
void frameCaptureAndTx();


//**************************************************************************************************
// function definitions
void setup()
{
  gFlagCaptureRunning = 0;
  pinMode(13,OUTPUT);
  digitalWrite(PIN_LED,1);

  (void)stonycam.init(PIN_RESP, PIN_INCP, PIN_RESV, PIN_INCV, PIN_INPHI, PIN_ANALOG1, PIN_ANALOG2); // raw: for 5v
  //(void)stonycam.init(PIN_RESP, PIN_INCP, PIN_RESV, PIN_INCV, PIN_INPHI, PIN_ANALOG,35,50,50,1,1); // amp: for 3v3
}

void loop()
{
  char cmd;
  char opcode,cc;

  // TODO: for now, the code has no requests for tuning parameters

  if(0 == gFlagCaptureRunning)
  {
    while(!Serial.available());
    /* FIXME russ add in escape sequences
    do
    {
      cc = Serial.read();
    } while(Serial.available() && (SYMBOL_SOF != cc));*/

    // grab data
    opcode = Serial.read();

    if(OPCODE_START == opcode)
    {
      gFlagCaptureRunning = 1;
      Serial.print(OPCODE_START_ACK);
    }
    else if(OPCODE_SINGLE_FRAME == opcode)
    {
      digitalWrite(PIN_LED,0);
      frameCaptureAndTx();
      digitalWrite(PIN_LED,1);
    }
    // otherwise, ignore
  }
  else
  {
    // check for stop command
    while(Serial.available())
    {
      /* FIXME russ add in escape sequences
      do
      {
         cc=Serial.read();
      } while((!Serial.available()) && (SYMBOL_SOF != cc));*/
      opcode = Serial.read();

      if(OPCODE_STOP == opcode)
      {
        gFlagCaptureRunning = 0;
        Serial.print(OPCODE_STOP_ACK);
        return;
      }
      // otherwise ignore

      // russ: even when other commands are added to change things (like the sample resolution or the
      //       framerate) these will only be accepted when a capture is not running
    }

    digitalWrite(PIN_LED,0);
    frameCaptureAndTx();
    digitalWrite(PIN_LED,1);
  }
}

void frameCaptureAndTx()
{
  short ii,jj;
  short imrow1[112];
  char  imrowsc1[112];
  short imrow2[112];
  char  imrowsc2[112];

  Serial.print(OPCODE_FRAME);

  for(ii = 0; ii < 112; ++ii)
  {
    //if(ii == (112/2-1)) Serial.print(OPCODE_FRAME);
    stonycam.getDualImages(imrow1,imrow2,ii,1,1,0,112,1);
    // FIXME russ: not efficient
    for(jj = 0; jj < 112; ++jj)
    {
      imrowsc1[jj]=255-imrow1[jj]+stonymask1[(112*ii)+jj];
      //imrowsc1[jj]=imrow1[jj]-stonymask1[(112*ii)+jj];
      // russ: try this if the masked version is not working
      //imrowsc2[jj]=imrow2[jj]-128;
      Serial.print((char)(imrowsc1[jj]));
    }
    for(jj = 0; jj < 112; ++jj)
    {
      imrowsc2[jj]=255-imrow2[jj]+stonymask2[(112*ii)+jj];
      //imrowsc2[jj]=imrow2[jj]-stonymask2[(112*ii)+jj];
      // russ: try this if the masked version is not working
      //imrowsc2[jj]=imrow2[jj]-128;
      Serial.print((char)(imrowsc2[jj]));
    }
  }
}
