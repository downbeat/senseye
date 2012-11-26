// FIXME russ: this is a terrible software hack way to get 2 cameras working!
// based on ArduEye_SMH_v1.c from the ArduEye Library for the Stonyman/Hawksbill.
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

// chipToMatlab
// This function dumps the entire contents of a Stonyman or
// Hawksbill chip to the Serial monitor in a form that may be copied
// into Matlab. The image is written be stored in matrix Img.
void Stonyman::chipToMatlab()
{
  unsigned char row,col,rows,cols;
  unsigned short val;
  // russ: unused
  //unsigned char chigh,clow;

  rows=cols=112;

  Serial.println("Img = [");
  setPointerValue(Stonyman::REG_ROWSEL,0); // set row = 0
  for (row=0; row<rows; ++row)
  {
    setPointerValue(Stonyman::REG_COLSEL,0); // set column = 0
    for (col=0; col<cols; ++col)
    {
      // settling delay
      delayMicroseconds(1);
      // pulse amplifier if needed
      if (flagUseAmplifier)
      {
        pulseInphi(2);
      }

      // get data value
      delayMicroseconds(1);

      val = analogRead(pinANALOG1);

      // increment column
      incValue(1);
      Serial.print(val);
      Serial.print(" ");
    }
    setPointer(Stonyman::REG_ROWSEL); // point to row
    incValue(1); // increment row
    Serial.println(" ");
  }
  Serial.println("];");
}


/* russ: the graveyard: here lie's dead code!  (perhaps useful later)
// setAnalogInput
// Sets the analog pin for one vision chip to be an input. This is for the Arduino onboard
// ADC, not an external ADC
void ArduEyeSMHClass::setAnalogInput(char analogInput)
{
 switch (analogInput)
 {
    case 0:
      ANALOG_DDR&=~ANALOG0;  //set chip 0 as analog input
      break;
    case 1:
      ANALOG_DDR&=~ANALOG1;
      break;
    case 2:
      ANALOG_DDR&=~ANALOG2;
      break;
    case 3:
      ANALOG_DDR&=~ANALOG3;
      break;
  }
}

// setADCInput
// Sets the analog pin to be a digital output and select a chip to connect to the external ADC.
// The state can be used to deselect a particular chip as well.
void ArduEyeSMHClass::setADCInput(char ADCInput,char state)
{
  // make sure A# pin is set to be a digital output
  switch (ADCInput){
    case 0:
      ANALOG_DDR |=ANALOG0; // set A0 to output
      if (state)
        ANALOG_PORT |= ANALOG0; // turn on
      else
        ANALOG_PORT &= ~ANALOG0; // turn off
      break;
    case 1:
      ANALOG_DDR |= ANALOG1; // set A1 to output
      if (state)
        ANALOG_PORT |= ANALOG1; // turn on
      else
        ANALOG_PORT &= ~ANALOG1; // turn off
      break;
    case 2:
      ANALOG_DDR  |= ANALOG2; // set A2 to output
      if (state)
        ANALOG_PORT |= ANALOG2; // turn on
      else
        ANALOG_PORT &= ~ANALOG2; // turn off
      break;
    case 3:
      ANALOG_DDR |= ANALOG3; // set A3 to output
      if (state)
        ANALOG_PORT |= ANALOG3; // turn on
      else
        ANALOG_PORT &= ~ANALOG3; // turn off
      break;
  }
}

// setBinning
// Configures binning in the focal plane using the VSW and HSW system registers. The super pixels
// are aligned with the top left of the image, e.g. "offset downsampling" is not used. This function
// is for the Stonyman chip only.
// VARIABLES:
// hbin: set to 1, 2, 4, or 8 to bin horizontally by that amount
// vbin: set to 1, 2, 4, or 8 to bin vertically by that amount
void ArduEyeSMHClass::setBinning(short hbin,short vbin)
{
   short hsw,vsw;

   switch (hbin) //horizontal binning
   {
    case 2:    //downsample by 2
      hsw = 0xAA;
      break;
    case 4:    //downsample by 4
      hsw = 0xEE;
      break;
    case 8:    //downsample by 8
      hsw = 0xFE;
      break;
    default:  //no binning
      hsw = 0x00;
   }

   switch (vbin)   //vertical binning
   {
    case 2:    //downsample by 2
      vsw = 0xAA;
      break;
    case 4:    //downsample by 4
      vsw = 0xEE;
      break;
    case 8:    //downsample by 8
      vsw = 0xFE;
      break;
    default:  //no binning
      vsw = 0x00;
    }

  //set switching registers
  setPointerValue(SMH_SYS_HSW,hsw);
  setPointerValue(SMH_SYS_VSW,vsw);
}

// calcMask
// Expose the vision chip to uniform texture (such as a white piece of paper placed over the
// optics).  Take an image using the getImage function.  Pass the short "img" array and the "size"
// number of pixels, along with a unsigned char "mask" array to hold the FPN mask and mask_base for
// the FPN mask base.  Function will populate the mask array and mask_base variable with the FPN
// mask, which can then be used with the applMask function.
void ArduEyeSMHClass::calcMask(short *img, short size, unsigned char   *mask,short *mask_base)
{
   *mask_base = 10000; // e.g. "high"

      for (int i=0; i<size; ++i)
        if (img[i]<(*mask_base))  //find the min value for mask_base
          *mask_base = img[i];

      // generate calibration mask
      for (int i=0; i<size; ++i)
        mask[i] = img[i] - *mask_base;  //subtract min value for mask
}

// applyMask
// given the "mask" and "mask_base" variables calculated in calcMask, and a current image, this
// function will subtract the mask to provide a calibrated image.
void ArduEyeSMHClass::applyMask(short *img, short size, unsigned char *mask, short mask_base)
{
   // Subtract calibration mask
  for (int i=0; i<size;++i)
  {
    img[i] -= mask_base+mask[i];  //subtract FPN mask
    img[i]=-img[i];          // negate image so it displays properly
  }
}

// getImageRowSum
// This function acquires a box section of a Stonyman or Hawksbill
// and saves to image array img.  However, each row of the image
// is summed and returned as a single value.
// Note that images are read out in
// raster manner (e.g. row wise) and stored as such in a 1D array.
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
void ArduEyeSMHClass::getImageRowSum(short *img, unsigned char rowstart, unsigned char numrows, unsigned char rowskip, unsigned char colstart, unsigned char numcols, unsigned char colskip, char ADCType,char anain)
{
  short *pimg = img; // pointer to output image array
  short val,total=0;
  unsigned char chigh,clow;
  unsigned char row,col;

  if(ADCType==SMH1_ADCTYPE_ONBOARD)  //if using onboard ADC
     setAnalogInput(anain);    //set analog input to Arduino
  else if(ADCType==SMH1_ADCTYPE_MCP3201_2)
  {
     setAnalogInput(anain);
     ADC_SS_PORT |= ADC_SS; // make sure SS is high
  }
  else  //if using external ADC
  {
    setADCInput(anain,1); // enable chip
    ADC_SS_PORT |= ADC_SS; // make sure SS is high
  }

  // Go to first row
  setPointerValue(SMH_SYS_ROWSEL,rowstart);

  // Loop through all rows
  for (row=0; row<numrows; ++row) {

    // Go to first column
    setPointerValue(SMH_SYS_COLSEL,colstart);

    total=0;

    // Loop through all columns
    for (col=0; col<numcols; ++col) {

      // settling delay
      delayMicroseconds(1);

      // pulse amplifier if needed
      if (useAmp)
        pulseInphi(2);

      // get data value
      delayMicroseconds(1);

      // get pixel value from ADC
      switch (ADCType)
      {
        case SMH1_ADCTYPE_ONBOARD:  //onboard Arduino ADC
           val = analogRead(anain); // acquire pixel
           break;
        case SMH1_ADCTYPE_MCP3001:  // Micrchip 10 bit
           ADC_SS_PORT &= ~ADC_SS;  // turn SS low to start conversion
           chigh=SPI.transfer(0);   // get high byte
           clow=SPI.transfer(0);    // get low byte
           val = ((short)(chigh&0x1F))<<5;
           val += (clow&0xF8)>>3;
           ADC_SS_PORT |= ADC_SS;   // SS high to stop
          break;
        case SMH1_ADCTYPE_MCP3201:  // Microchip 12 bit
        case SMH1_ADCTYPE_MCP3201_2:
           ADC_SS_PORT &= ~ADC_SS;  // turn SS low to start conversion
           chigh=SPI.transfer(0);   // get high byte
           clow=SPI.transfer(0);    // get low byte
           val = ((short)(chigh&0x1F))<<7;
           val += (clow&0xFE)>>1;
           ADC_SS_PORT |= ADC_SS;   // SS high to stop
          break;
        default:
           val = 555;
          break;
      }

      total+=val;  //sum values along row
      incValue(colskip); // go to next column
    }

    *pimg = total>>4; // store pixel divide to avoid overflow
    pimg++; // advance pointer

    setPointer(SMH_SYS_ROWSEL);
    incValue(rowskip); // go to next row
  }

  if((ADCType!=SMH1_ADCTYPE_ONBOARD)&&(ADCType!=SMH1_ADCTYPE_MCP3201_2))
   setADCInput(anain,0); // disable chip

}

// getImageColSum
// This function acquires a box section of a Stonyman or Hawksbill
// and saves to image array img.  However, each col of the image
// is summed and returned as a single value.
// Note that images are read out in
// raster manner (e.g. row wise) and stored as such in a 1D array.
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
void ArduEyeSMHClass::getImageColSum(short *img, unsigned char rowstart, unsigned char numrows, unsigned char rowskip, unsigned char colstart, unsigned char numcols, unsigned char colskip, char ADCType,char anain)
{
  short *pimg = img; // pointer to output image array
  short val,total=0;
  unsigned char chigh,clow;
  unsigned char row,col;

  if(ADCType==SMH1_ADCTYPE_ONBOARD)  //if using onboard ADC
     setAnalogInput(anain);    //set analog input to Arduino
  else if(ADCType==SMH1_ADCTYPE_MCP3201_2)
  {
     setAnalogInput(anain);
     ADC_SS_PORT |= ADC_SS; // make sure SS is high
  }
  else  //if using external ADC
  {
    setADCInput(anain,1); // enable chip
    ADC_SS_PORT |= ADC_SS; // make sure SS is high
  }

  // Go to first col
  setPointerValue(SMH_SYS_COLSEL,colstart);

  // Loop through all cols
  for (col=0; col<numcols; ++col) {

    // Go to first row
    setPointerValue(SMH_SYS_ROWSEL,rowstart);

    total=0;

    // Loop through all rows
    for (row=0; row<numrows; ++row) {

      // settling delay
      delayMicroseconds(1);

      // pulse amplifier if needed
      if (useAmp)
        pulseInphi(2);

      // get data value
      delayMicroseconds(1);

      // get pixel value from ADC
      switch (ADCType)
      {
        case SMH1_ADCTYPE_ONBOARD:  //onboard Arduino ADC
          val = analogRead(anain); // acquire pixel
          break;
        case SMH1_ADCTYPE_MCP3001:  // Micrchip 10 bit
           ADC_SS_PORT &= ~ADC_SS;  // turn SS low to start conversion
           chigh=SPI.transfer(0);   // get high byte
           clow=SPI.transfer(0);    // get low byte
           val = ((short)(chigh&0x1F))<<5;
           val += (clow&0xF8)>>3;
           ADC_SS_PORT |= ADC_SS;   // SS high to stop
          break;
        case SMH1_ADCTYPE_MCP3201:  // Microchip 12 bit
        case SMH1_ADCTYPE_MCP3201_2:
          ADC_SS_PORT &= ~ADC_SS;  // turn SS low to start conversion
           chigh=SPI.transfer(0);   // get high byte
           clow=SPI.transfer(0);    // get low byte
           val = ((short)(chigh&0x1F))<<7;
           val += (clow&0xFE)>>1;
           ADC_SS_PORT |= ADC_SS;   // SS high to stop
          break;
        default:
           val = 555;
          break;
      }

      total+=val;  //sum value along column
      incValue(rowskip); // go to next row
    }

    *pimg = total>>4; // store pixel
    pimg++; // advance pointer

    setPointer(SMH_SYS_COLSEL);
    incValue(colskip); // go to next col
  }

  if((ADCType!=SMH1_ADCTYPE_ONBOARD)&&(ADCType!=SMH1_ADCTYPE_MCP3201_2))
   setADCInput(anain,0); // disable chip

}

// findMax
// Searches over a block section of a Stonyman or Hawksbill chip
// to find the brightest pixel. This function is intended to be used
// for things like finding the location of a pinhole in response to
// a bright light.
//
// VARIABLES:
// rowstart: first row to search
// numrows: number of rows to search
// rowskip: skipping between rows (useful if binning is used)
// colstart: first column to search
// numcols: number of columns to search
// colskip: skipping between columns
// ADCType: which ADC to use, defined ADC_TYPES
// anain (0,1,2,3): which analog input to use
// rowwinner: (output) pointer to variable to write row of brightest
// pixel
// colwinner: (output) pointer to variable to write column of
// brightest pixel
//
// EXAMPLE:
// FindMaxSlow(8,104,1,8,104,1,SMH1_ADCTYPE_ONBOARD,0,&rowwinner,
// &colwinner):
// Search rows 8...104 and columns 8...104 for brightest pixel, with
// onboard ADC, chip 0
void ArduEyeSMHClass::findMax(unsigned char rowstart, unsigned char numrows, unsigned char rowskip, unsigned char colstart, unsigned char numcols, unsigned char colskip, char ADCType,char anain,unsigned char *max_row, unsigned char *max_col)
{
  unsigned short maxval=5000,minval=0,val;
  unsigned char row,col,bestrow,bestcol;
  unsigned char chigh,clow;


  if(ADCType==SMH1_ADCTYPE_ONBOARD)  //if using onboard ADC
     setAnalogInput(anain);  //set Arduino analog input
  else
  {
    setADCInput(anain,1); // enable chip
    ADC_SS_PORT |= ADC_SS; // make sure SS is high
  }

  // Go to first row
  setPointerValue(SMH_SYS_ROWSEL,rowstart);

  // Loop through all rows
  for (row=0; row<numrows; ++row) {

    // Go to first column
    setPointerValue(SMH_SYS_COLSEL,colstart);

    // Loop through all columns
    for (col=0; col<numcols; ++col) {

      // settling delay
      delayMicroseconds(1);

      // pulse amplifier if needed
      if (useAmp)
        pulseInphi(2);

      // get data value
      delayMicroseconds(1);

      // get pixel from ADC
      switch (ADCType) {
        case SMH1_ADCTYPE_ONBOARD:  //onboard Arduino ADC
           val = analogRead(anain); // acquire pixel
           break;
        case SMH1_ADCTYPE_MCP3001: // Micrchip 10 bit
           ADC_SS_PORT &= ~ADC_SS; // turn SS low to start conversion
           chigh=SPI.transfer(0); // get high byte
           clow=SPI.transfer(0); // get low byte
           val = ((short)(chigh&0x1F))<<5;
           val += (clow&0xF8)>>3;
           ADC_SS_PORT |= ADC_SS; // SS high to stop
          break;
        case SMH1_ADCTYPE_MCP3201: // Microchip 12 bit
          ADC_SS_PORT &= ~ADC_SS; // turn SS low to start conversion
           chigh=SPI.transfer(0); // get high byte
           clow=SPI.transfer(0); // get low byte
           val = ((short)(chigh&0x1F))<<7;
           val += (clow&0xFE)>>1;
           ADC_SS_PORT |= ADC_SS; // SS high to stop
          break;
        default:
           val = 555;
          break;
      }

      if(useAmp) //amplifier is inverted
      {
        if (val>minval) //find max val (bright)
         {
          bestrow=row;
          bestcol=col;
          minval=val;
         }
      }
      else  //unamplified
      {
        if (val<maxval)   //find min val (bright)
        {
           bestrow=row;
           bestcol=col;
           maxval=val;
        }
      }

      incValue(colskip); // go to next column
    }
    setPointer(SMH_SYS_ROWSEL);
    incValue(rowskip); // go to next row
  }

  if(ADCType!=SMH1_ADCTYPE_ONBOARD)
   setADCInput(anain,0); // disable chip

  // Optionally we can comment out these next three items
  //Serial.print("bestrow = "); Serial.println((short)bestrow);
  //Serial.print("bestcol = "); Serial.println((short)bestcol);
  //Serial.print("maxval = "); Serial.println((short)maxval);

  *max_row = bestrow;
  *max_col = bestcol;
}
*/

/*
// sectionToMatlab
// This function dumps a box section of a Stonyman or Hawksbill
// to the Serial monitor in a form that may be copied into Matlab.
// The image is written to be stored in matrix Img.
//
// VARIABLES:
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
// sectionToMatlab(16,8,1,24,8,1,SMH1_ADCTYPE_ONBOARD,0):
// Grab an 8x8 window of pixels at raw resolution starting at row
// 16, column 24, from onboard ADC at chip 0
// sectionToMatlab(0,14,8,0,14,8,SMH1_ADCTYPE_ONBOARD,2):
// Grab entire Stonyman chip when using 8x8 binning. Grab from input
// 2.
void ArduEyeSMHClass::sectionToMatlab(unsigned char rowstart,   unsigned char numrows, unsigned   char rowskip, unsigned char colstart, unsigned char numcols, unsigned char colskip, char ADCType, unsigned char anain)
{
  short val;
  unsigned char row,col;
  unsigned char clow,chigh;

  if(ADCType==SMH1_ADCTYPE_ONBOARD) //if onboard ADC
     setAnalogInput(anain);
  else
  {
    setADCInput(anain,1); // enable chip
    ADC_SS_PORT |= ADC_SS; // make sure SS is high
  }

  Serial.println("Img = [");
  setPointerValue(SMH_SYS_ROWSEL,rowstart);

  for (row=0; row<numrows; row++) {

    setPointerValue(SMH_SYS_COLSEL,colstart);

    for (col=0; col<numcols; col++) {
      // settling delay
      delayMicroseconds(1);

      // pulse amplifier if needed
      if (useAmp)
        pulseInphi(2);

      delayMicroseconds(1);


      // get pixel from ADC
      switch (ADCType) {
        case SMH1_ADCTYPE_ONBOARD:
           val = analogRead(anain); // acquire pixel
          break;
        case SMH1_ADCTYPE_MCP3001: // Micrchip 10 bit
           ADC_SS_PORT &= ~ADC_SS; // turn SS low to start conversion
           chigh=SPI.transfer(0); // get high byte
           clow=SPI.transfer(0); // get low byte
           val = ((short)(chigh&0x1F))<<5;
           val += (clow&0xF8)>>3;
           ADC_SS_PORT |= ADC_SS; // SS high to stop
          break;
        case SMH1_ADCTYPE_MCP3201: // Microchip 12 bit
          ADC_SS_PORT &= ~ADC_SS; // turn SS low to start conversion
           chigh=SPI.transfer(0); // get high byte
           clow=SPI.transfer(0); // get low byte
           val = ((short)(chigh&0x1F))<<7;
           val += (clow&0xFE)>>1;
           ADC_SS_PORT |= ADC_SS; // SS high to stop
          break;
        default:
           val = 555;
          break;
      }

      incValue(colskip);
      Serial.print(val);
      Serial.print(" ");
    }
    setPointer(SMH_SYS_ROWSEL);
    incValue(rowskip); // go to next row
    Serial.println(" ");
  }
  Serial.println("];");

  if(ADCType!=SMH1_ADCTYPE_ONBOARD)
    setADCInput(anain,0); // disable chip

}
*/

