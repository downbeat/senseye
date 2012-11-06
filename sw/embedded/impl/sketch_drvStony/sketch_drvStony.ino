#include "stony.h"


const char PIN_LED = 13;

const char PIN_RESP = 8;
const char PIN_INCP = 7;
const char PIN_RESV = 6;
const char PIN_INCV = 5;
const char PIN_INPHI = 4;
const char PIN_ANALOG = A0;

const unsigned long BAUDRATE = 115200;


camera stonycam;


void getCmd(char*);


void setup()
{
  pinMode(13,OUTPUT);
  digitalWrite(PIN_LED,1);

  Serial.begin(BAUDRATE);

  (void)stonycam.init(PIN_RESP, PIN_INCP, PIN_RESV, PIN_INCV, PIN_INPHI, PIN_ANALOG); // raw: for 5v
  //(void)stonycam.init(PIN_RESP, PIN_INCP, PIN_RESV, PIN_INCV, PIN_INPHI, PIN_ANALOG,35,50,50,1,1); // amp: for 3v3
}

void loop()
{
  char cmd;

  while(!Serial.available());

  digitalWrite(PIN_LED,0);

  getCmd(&cmd);

  switch(cmd)
  {
    case 'Z':
      stonycam.chipToMatlab();
      break;
    case '?':
    default:
      Serial.println("Z: MATLAB chip"); 
      delay(50);
      break;
  }

  digitalWrite(PIN_LED,1);
}

// russ: this is a (simplified) clone of ArduEyeGUIClass::getCommand from the ArduEye_GUI library
// for some reason, sscanf is blowing up my linker (probably a bug in teensyduino for teensy3),
// so I just removed the argument processing (which I didn't need anyway)
void getCmd(char *command)
{
  char cmdbuf[11];
  unsigned char i;

  // initialize
  for (i=0; i<11; ++i)
    cmdbuf[i] = 0;
  i = 0;
  // delay to ensure that all stuff is sent through serial port
  delay(100);
  // load cmdbuf
  while (Serial.available() && i<10) {
    cmdbuf[i] = Serial.read();
    i++;
  }
  // clear end of array
  cmdbuf[10]=0;
  // clear rest of buffer
  while (Serial.available())
    ;
  // get command
  *command = cmdbuf[0];
}

