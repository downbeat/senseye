//**************************************************************************************************
// stony_dual is a hardcoded, two camera driver for the CentEye Stonyman vision chip.
// stony_dual is part of the SensEye project.
// Copyright (C) 2012  The University of Michigan
//
// stony_dual is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//**************************************************************************************************

// FIXME russ: this is a terrible software hack way to get 2 cameras working!

//*************************************************************************************************
// Russ Bielawski (jbielaws@umich.edu)
//
// stony
// This is a camera driver for the CentEye Stonyman vision chip.
// WARNINGS:
//  - unfortunately (for now), the driver is coupled with an ADC driver for the freescale
//    kinetis.  FIXME russ: is this true?
//  - driver is not reentrant (in fact, everything is written to block).
//  - 3V3 operation not implemented.
//  - driver is not optimized for low memory consumption (neither ROM nor RAM)
//  - very few functions check their parameters.  this should be fixed.
//  - TODO
//
// Based on ArduEye_SMH_v1.c from the ArduEye Library for the Stonyman/Hawksbill.
//*************************************************************************************************

#include "stony_dual.h"
#include "Arduino.h"


/*
// FIXME russ: for now, I have added microsecond delays, but they might be too long or possibly
//             completely unnecessary and therefore wasteful.
#define pulseRESP()  do { digitalWriteFast(pinRESP,1); delayMicroseconds(1); digitalWriteFast(pinRESP,0); } while(0)
#define pulseINCP()  do { digitalWriteFast(pinINCP,1); delayMicroseconds(1); digitalWriteFast(pinINCP,0); } while(0)
#define pulseRESV()  do { digitalWriteFast(pinRESV,1); delayMicroseconds(1); digitalWriteFast(pinRESV,0); } while(0)
#define pulseINCV()  do { digitalWriteFast(pinINCV,1); delayMicroseconds(1); digitalWriteFast(pinINCV,0); } while(0)
*/
#define pulseRESP()  do { digitalWriteFast(pinRESP,1); digitalWriteFast(pinRESP,0); } while(0)
#define pulseINCP()  do { digitalWriteFast(pinINCP,1); digitalWriteFast(pinINCP,0); } while(0)
#define pulseRESV()  do { digitalWriteFast(pinRESV,1); digitalWriteFast(pinRESV,0); } while(0)
#define pulseINCV()  do { digitalWriteFast(pinINCV,1); digitalWriteFast(pinINCV,0); } while(0)


//*************************************************************************************************
// Init

// init
// Initializes the vision chips for normal operation.  Sets vision chip pins to low outputs, clears
// chip registers, sets biases and config register.  Arduino pin numbers must be specified.  For
// the remaining parameters if no parameters are passed in, default values are used.
void Stonyman::init( char inPinRESP, char inPinINCP, char inPinRESV, char inPinINCV,
                     char inPinINPHI, char inPinANALOG1, char inPinANALOG2, short vref, short nbias,
                     short aobias, char gain, char selamp )
{
  short config;

/* TODO russ: use later
  if(Stonyman::MAX_GAIN < inGain)
  {
    return Stonyman::RC_ERROR_BADPARAM;
  }
  // TODO russ: there are likely other checks to perform (vref, nbias, aobias)
*/
  pinRESP = inPinRESP;
  pinINCP = inPinINCP;
  pinRESV = inPinRESV;
  pinINCV = inPinINCV;
  pinINPHI = inPinINPHI;
  pinANALOG1 = inPinANALOG1;
  pinANALOG2 = inPinANALOG2;

  // set all digital pins to output
  pinMode(pinRESP, OUTPUT);
  pinMode(pinINCP, OUTPUT);
  pinMode(pinRESV, OUTPUT);
  pinMode(pinINCV, OUTPUT);
  pinMode(pinINPHI, OUTPUT);
  // FIXME russ: is this necessary?
  pinMode(pinANALOG1, INPUT);
  pinMode(pinANALOG2, INPUT);

  // set all pins low
  digitalWriteFast(pinRESP, 0);
  digitalWriteFast(pinINCP, 0);
  digitalWriteFast(pinRESV, 0);
  digitalWriteFast(pinINCV, 0);
  digitalWriteFast(pinINPHI, 0);

  //clear all chip register values
  clearValues();

  //set up biases
  // TODO russ: haven't looked at what this function does
  setBiases(vref,nbias,aobias);

  // sanitize this input before use
  flagUseAmplifier=selamp ? 1:0;

  config=gain+(flagUseAmplifier*8)+(16);

  //turn chip on with config value
  setPointerValue(Stonyman::REG_CONFIG,config);

// TODO russ: use later
//  return Stonyman::RC_OK;
}


//*************************************************************************************************
// Chip Register and Value Manipulation

// setPointer
// Sets the pointer system register to the desired value
void Stonyman::setPointer(char ptr)
{
  short ii;

  // clear pointer
  pulseRESP();

  // increment pointer to desired value
  for (ii = 0; ii != ptr; ++ii)
  {
    pulseINCP();
  }
}

// setValue
// Sets the value of the current register
void Stonyman::setValue(short val)
{
  short ii;

  // clear pointer
  pulseRESV();

  // increment pointer
  for (ii = 0; ii != val; ++ii)
  {
    pulseINCV();
  }
}

// incValue
// Sets the pointer system register to the desired value.  Value is not reset so the current value
// must be taken into account
void Stonyman::incValue(short val)
{
  short ii;

  for(ii = 0; ii < val; ++ii) //increment pointer
  {
    pulseINCV();
  }
}

// pulseInphi
// Operates the amplifier.  Sets inphi pin high, delays to allow value time to settle, and then
// brings it low.
void Stonyman::pulseInphi(char delay)
{
  digitalWriteFast(pinINPHI,1);
  delayMicroseconds(delay);
  digitalWriteFast(pinINPHI,0);
}

// setPointerValue
// Sets the pointer to a register and sets the value of that register
void Stonyman::setPointerValue(char ptr, short val)
{
  setPointer(ptr);  //set pointer to register
  setValue(val);  //set value of that register
}

// clearValues
// Resets the value of all registers to zero
void Stonyman::clearValues(void)
{
  short ii;

  for (ii = 0; ii < Stonyman::REG_CNT; ++ii)
  {
    setPointerValue(ii,0);  //set each register to zero
  }
}


//*************************************************************************************************
// Bias Functions

// setVREF
// Sets the VREF register value (0-63)
void  Stonyman::setVREF(short vref)
{
  setPointerValue(Stonyman::REG_VREF,vref);
}

// setNBIAS
// Sets the NBIAS register value (0-63)
void  Stonyman::setNBIAS(short nbias)
{
  setPointerValue(Stonyman::REG_NBIAS,nbias);
}

// setAOBIAS
// Sets the AOBIAS register value (0-63)
void  Stonyman::setAOBIAS(short aobias)
{
  setPointerValue(Stonyman::REG_AOBIAS,aobias);
}

// setBiasesVdd
// Sets biases based on chip voltage
void Stonyman::setBiasesVdd(char flagVddType5v5)
{

  // determine biases. Only one option for now.
  switch (flagVddType5v5)
  {
    case 1:  //chip receives 5V
    default:
      setPointerValue(Stonyman::REG_NBIAS,Stonyman::DEFAULT_NBIAS_5V0);
      setPointerValue(Stonyman::REG_AOBIAS,Stonyman::DEFAULT_AOBIAS_5V0);
      setPointerValue(Stonyman::REG_VREF,Stonyman::DEFAULT_VREF_5V0);
    break;
  }
}

// setBiases
// Sets all three biases
void Stonyman::setBiases(short vref,short nbias,short aobias)
{
  setPointerValue(Stonyman::REG_NBIAS,nbias);
  setPointerValue(Stonyman::REG_AOBIAS,aobias);
  setPointerValue(Stonyman::REG_VREF,vref);
}

// setConfig
// Sets configuration register
// cvdda:  (1) connect vdda, always should be connected
// selamp: (0) bypasses amplifier, (1) connects it
// gain:   amplifier gain 1-7
// EXAMPLE 1: To configure the chip to bypass the amplifier:
// setConfig(0,0,1);
// EXAMPLE 2: To use the amplifier and set the gain to 4:
// setConfig(4,1,1);
void Stonyman::setConfig(char gain, char selamp, char cvdda)
{
   short config;

   config=gain+(selamp*8)+(cvdda*16);  //form register value

   flagUseAmplifier = selamp ? 1:0;

   // Note that config will have the following form binary form:
   // 000csggg where c=cvdda, s=selamp, ggg=gain (3 bits)
   // Note that there is no overflow detection in the input values.
   setPointerValue(Stonyman::REG_CONFIG,config);
}

// setAmpGain
// A friendlier version of setConfig.  If amplifier gain is set to zero, amplifier is bypassed.
// Otherwise the appropriate amplifier gain (range 1-7) is set.
void Stonyman::setAmpGain(char gain)
{
  short config;

  if((gain>0) && (gain<=Stonyman::MAX_GAIN))  //if gain is a proper value, connect amp
  {
    config=gain+8+16;  //gain+(selamp=1)+(cvdda=1)
    flagUseAmplifier=1;  //using amplifier
  }
  else  //if gain is zero or outside range, bypass amp
  {
    config=16; //(cvdda=1)
    flagUseAmplifier=0;  //bypassing amplifier
  }

  setPointerValue(Stonyman::REG_CONFIG,config);  //set config register
}


//*************************************************************************************************
// Image Functions

// getImage
// This function acquires a box section of a Stonyman or Hawksbill and saves to image array img.
// Note that images are read out in raster manner (e.g. row wise) and stored as such in a 1D array.
// In this case the pointer img points to the output array.
//
// VARIABLES:
// img (output): pointer to image array, an array of signed shorts
// rowstart: first row to acquire
// numrows: number of rows to acquire
// rowskip: skipping between rows (useful if binning is used)
// colstart: first column to acquire
// numcols: number of columns to acquire
// colskip: skipping between columns
// ADCType: which ADC to use, defined ADC_TYPES
// anain (0,1,2,3): which analog input to use
//
// EXAMPLES:
// getImage(img,16,8,1,24,8,1,SMH1_ADCTYPE_ONBOARD,0):
// Grab an 8x8 window of pixels at raw resolution starting at row
// 16, column 24, from chip using onboard ADC at input 0
// getImage(img,0,14,8,0,14,8,SMH1_ADCTYPE_MCP3201,2):
// Grab entire Stonyman chip when using
// 8x8 binning. Grab from input 2.
void Stonyman::getImage( short *img, unsigned char rowstart, unsigned char numrows,
                       unsigned char rowskip, unsigned char colstart, unsigned char numcols,
                       unsigned char colskip ) //, char ADCType, char anain )
{
  short *pimg = img; // pointer to output image array
  short val;
  //russ: unused
  //unsigned char chigh,clow;
  unsigned char row,col;

  // Go to first row
  setPointerValue(Stonyman::REG_ROWSEL,rowstart);

  // Loop through all rows
  for (row=0; row<numrows; ++row)
  {
    // Go to first column
    setPointerValue(Stonyman::REG_COLSEL,colstart);

    // Loop through all columns
    for (col=0; col<numcols; ++col)
    {
      // settling delay
      delayMicroseconds(1);

      // pulse amplifier if needed
      if (flagUseAmplifier)
      {
        pulseInphi(2); // TODO russ: necessary value unclear/unknown
      }

      // get data value
      delayMicroseconds(1);

      val = analogRead(pinANALOG1); // acquire pixel

      *pimg = val; // store pixel
      pimg++; // advance pointer
      incValue(colskip); // go to next column
    }
    setPointer(Stonyman::REG_ROWSEL);
    incValue(rowskip); // go to next row
  }
}


// russ: dual read!
void Stonyman::getDualImages( short *img1, short *img2, unsigned char rowstart, unsigned char numrows,
                              unsigned char rowskip, unsigned char colstart, unsigned char numcols,
                              unsigned char colskip ) //, char ADCType, char anain )
{
  short *pimg1 = img1; // pointer to output image array
  short *pimg2 = img2; // pointer to output image array
  int val1, val2;
  //russ: unused
  //unsigned char chigh,clow;
  unsigned char row,col;

  // Go to first row
  setPointerValue(Stonyman::REG_ROWSEL,rowstart);

  // Loop through all rows
  for (row=0; row<numrows; ++row)
  {
    // Go to first column
    setPointerValue(Stonyman::REG_COLSEL,colstart);

    // Loop through all columns
    for (col=0; col<numcols; ++col)
    {
      // settling delay
      delayMicroseconds(1);

      // pulse amplifier if needed
      if (flagUseAmplifier)
      {
        pulseInphi(2); // TODO russ: necessary value unclear/unknown
      }

      // get data value
      delayMicroseconds(1);

      val1 = analogRead(pinANALOG1);
      val2 = analogRead(pinANALOG2);

      // AHHH: shorten casts!
      *pimg1 = (short)val1; // store pixel
      *pimg2 = (short)val2; // store pixel
      pimg1++; // advance pointer
      pimg2++; // advance pointer
      incValue(colskip); // go to next column
    }
    setPointer(Stonyman::REG_ROWSEL);
    incValue(rowskip); // go to next row
  }
}
