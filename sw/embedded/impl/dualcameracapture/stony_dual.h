#ifndef STONY_DUAL_H
#define STONY_DUAL_H
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
//*************************************************************************************************

class Stonyman
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

    static const short DEFAULT_VREF_5V0   = 30;  //vref for 5 volts
    static const short DEFAULT_NBIAS_5V0  = 55;  //nbias for 5 volts
    static const short DEFAULT_AOBIAS_5V0 = 55;  //aobias for 5 volts
    static const char  DEFAULT_GAIN_5V0   = 0;   //gain for 5 volts
    static const char  DEFAULT_SELAMP_5V0 = 0;   //selamp for 5 volts

    static const short MAX_GAIN = 7;

//*************************************************************************************************
// Initialize the vision chip for image readout
    void init( char inPinRESP, char inPinINCP, char inPinRESV, char inPinINCV,
               char inPinINPHI, char inPinANALOG1, char inPinANALOG2, short vref=DEFAULT_VREF_5V0,
               short nbias=DEFAULT_NBIAS_5V0, short aobias=DEFAULT_AOBIAS_5V0,
               char gain=DEFAULT_GAIN_5V0, char selamp=DEFAULT_SELAMP_5V0 );

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
    void getDualImages( short *img1, short* img2, unsigned char rowstart, unsigned char numrows,
                        unsigned char rowskip, unsigned char colstart, unsigned char numcols,
                        unsigned char colskip );
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

  char pinANALOG1;
  char pinANALOG2;

  char flagUseAmplifier;
};

//typedef unsigned char stony_pin_t;


#endif // STONY_DUAL_H

