#ifndef STONY_H
#define STONY_H

//*************************************************************************************************
// Russ Bielawski (jbielaws@umich.edu)
//
// stony
// This is a camera driver for the CentEye Stonyman vision chip.
// WARNINGS:
//  - unfortunately (for now), the driver is coupled with an ADC driver for the freescale
//    kinetis.
//  - driver is not reentrant (in fact, everything is written to block).
//  - 3V3 operation not implemented.
//  - driver is not optimized for low memory consumption (neither ROM nor RAM)
//  - very few functions check their parameters.  this should be fixed.
//  - TODO
//*************************************************************************************************

// FIXME russ: do I need this?
//#include "Arduino.h"

//*************************************************************************************************
//MACROS to pulse chip lines
//#define SMH1_ResP_Pulse {RESP_PORT|=RESP;RESP_PORT&=~RESP;}
//#define SMH1_IncP_Pulse {INCP_PORT|=INCP;INCP_PORT&=~INCP;}
//#define SMH1_ResV_Pulse {RESV_PORT|=RESV;RESV_PORT&=~RESV;}
//#define SMH1_IncV_Pulse {INCV_PORT|=INCV;INCV_PORT&=~INCV;}


//*************************************************************************************************
//MACROS for inphi (delay is inserted between high and low)
//#define SMH1_InPhi_SetHigh {INPHI_PORT|=INPHI;}
//#define SMH1_InPhi_SetLow {INPHI_PORT&=~INPHI;}


//*************************************************************************************************
//MACRO to set all pins low
//#define SMH1_SetAllLow \
//   {RESP_PORT&=~RESP;INCP_PORT&=~INCP;RESV_PORT&=~RESV;INCV_PORT&=~INCV;INPHI_PORT&=~INPHI;}


//*************************************************************************************************
//SMH System Registers
//#define SMH_SYS_COLSEL 0  //select column
//#define SMH_SYS_ROWSEL 1  //select row
//#define SMH_SYS_VSW 2    //vertical switching
//#define SMH_SYS_HSW 3    //horizontal switching
//#define SMH_SYS_CONFIG 5  //configuration register
//#define SMH_SYS_VREF 4    //voltage reference
//#define SMH_SYS_NBIAS 6    //nbias
//#define SMH_SYS_AOBIAS 7  //analog out bias


//*************************************************************************************************
//default values

// Supply voltage types
// Notation: AVB is A.B volts. e.g. 5V0 is 5V, 3V3 is 3.3V, etc.
//#define SMH1_VDD_5V0  1

//#define SMH_VREF_5V0 30    //vref for 5 volts
//#define SMH_NBIAS_5V0 55  //nbias for 5 volts
//#define SMH_AOBIAS_5V0 55  //aobias for 5 volts

//#define SMH_GAIN_DEFAULT 0  //no amp gain
//#define SMH_SELAMP_DEFAULT 0  //amp bypassed

//*************************************************************************************************
// ADC types

// ARDUINO ONBOARD ADC
//#define SMH1_ADCTYPE_ONBOARD 0
// MCP3201, Microchip, 12bits, 100ksps
//#define SMH1_ADCTYPE_MCP3201 1
// MCP3201, Microchip, 12bits, 100ksps, for ArduEye Bug v1.0
//#define SMH1_ADCTYPE_MCP3201_2 2
// MCP3001, Microchip, 10bits, 200ksps
//#define SMH1_ADCTYPE_MCP3001 3



class camera
{
  public:
/* TODO russ: use later
    typedef char t_rc;

    static const t_rc RC_OK = 0;
    static const t_rc RC_ERROR_UNIMPL = -1;
    static const t_rc RC_ERROR_BADPARAM = -2;
*/

    static const char REG_COLSEL = 0;  //select column
    static const char REG_ROWSEL = 1;  //select row
    static const char REG_VSW    = 2;  //vertical switching
    static const char REG_HSW    = 3;  //horizontal switching
    static const char REG_CONFIG = 5;  //configuration register
    static const char REG_VREF   = 4;  //voltage reference
    static const char REG_NBIAS  = 6;  //nbias
    static const char REG_AOBIAS = 7;  //analog out bias
    static const char REG_CNT    = 8;

    static const short VAL_VREF_5V0   = 30;  //vref for 5 volts
    static const short VAL_NBIAS_5V0  = 55;  //nbias for 5 volts
    static const short VAL_AOBIAS_5V0 = 55;  //aobias for 5 volts

    static const short MAX_GAIN = 7;

//*************************************************************************************************
// Initialize the vision chip for image readout
    void init( char inPinRESP, char inPinINCP, char inPinRESV, char inPinINCV,
               char inPinINPHI, char inPinANALOG, short inVref=VAL_VREF_5V0,
               short inNbias=VAL_NBIAS_5V0, short inAobias=VAL_AOBIAS_5V0, char gain=0,
               char selamp=0 );

//*************************************************************************************************
// Chip Register and Value Manipulation
    void setPointer(char ptr);
    void setValue(short val);
    void incValue(short val);
    void pulseInphi(char delay);
    void clearValues(void);
    void setPointerValue(char ptr,short val);
    void setConfig(char gain, char selamp, char cvdda=1);
    void setAmpGain(char gain);
/*
    void setAnalogInput(char analogInput);
    void setADCInput(char ADCInput,char state);
    void setBinning(short hbin,short vbin);
*/

//*************************************************************************************************
// Bias functions
    //set individual bias values
    void setVREF(short vref);
    void setNBIAS(short nbias);
    void setAOBIAS(short aobias);
    //set biases based on Vdd
    void setBiasesVdd(char flagVddType5v5);
    //set all bias values
    void setBiases(short vref, short nbias, short aobias);

//*************************************************************************************************
// Image Functions
/*
    //given an image, returns a fixed-pattern noise mask and mask_base
    void calcMask(short *img, short size, unsigned char *mask, short   *mask_base);
    //applies pre-calculated FPN mask to an image
    void applyMask(short *img, short size, unsigned char *mask, short   mask_base);
*/
    //gets an image from the vision chip
    void getImage( short *img, unsigned char rowstart, unsigned char numrows,
                   unsigned char rowskip, unsigned char colstart, unsigned char numcols,
                   unsigned char colskip ); //, char ADCType, char anain );
/*
    //gets a image from the vision chip, sums each row and returns one pixel for the row
    void getImageRowSum(short *img, unsigned char rowstart, unsigned char   numrows, unsigned char rowskip, unsigned char colstart, unsigned   char numcols, unsigned char colskip, char ADCType,char anain);
    //gets a image from the vision chip, sums each col and returns one pixel for the col
    void getImageColSum(short *img, unsigned char rowstart, unsigned char   numrows, unsigned char rowskip, unsigned char colstart, unsigned   char numcols, unsigned char colskip, char ADCType,char anain);
    //takes an image and returns the maximum value row and col
    void findMax(unsigned char rowstart, unsigned char numrows,   unsigned char rowskip, unsigned char colstart, unsigned char   numcols, unsigned char colskip, char ADCType,char anain,unsigned   char *max_row, unsigned char *max_col);
*/
    //prints the entire vision chip over serial as a Matlab array
    void chipToMatlab();
/*
    //prints a section of the vision chip over serial as a Matlab array
    void sectionToMatlab(unsigned char rowstart, unsigned char   numrows, unsigned char rowskip, unsigned char colstart, unsigned   char numcols, unsigned char colskip, char ADCType, unsigned char   anain);
*/

private:
  char pinRESP;
  char pinINCP;
  char pinRESV;
  char pinINCV;
  char pinINPHI;

  char pinANALOG;

  char flagUseAmplifier;
};

//external definition of ArduEyeSMH class instance
// FIXME russ: do I need this?
//extern ArduEyeSMHClass ArduEyeSMH;

#endif // STONY_H

