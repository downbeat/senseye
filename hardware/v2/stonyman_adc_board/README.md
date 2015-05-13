# SensEye Imager/ADC Board

## Wirebonding Instructions

The SensEye Imager/ADC wirebonding instructions are incomplete.  The information is correct but incomplete.  The purpose is to give all the necessary information a company would need to perform the wirebonding service.

CentEye released their [wirebonding document](https://github.com/ArduEye/ArduEyeDocs/blob/master/COB_Centeye_ArdueyeStonymanA.pdf) for producing their Stonyman breakout board on the [open-source ArduEye github](https://github.com/ArduEye/ArduEyeDocs).  The SensEye Imager/ADC board wirebonding document refers to that document for additional instructions.

## Status of this Design

CentEye prototyped the mounting, wirebonding and lens attachment for the SensEye Imager/ADC board, affixing and wirebonding the imager chips onto the boards no differently than the Stonyman breakout boards.  Unfortunately, that run had a layout bug (the ADC footprint had two pins swapped).  Rev b of the PCB fixes that layout bug.

At some point, one of the imager boards did capture images briefly after a delicate rework.  The Imager/ADC board is likely to work as long as all solding is complete before the Stonyman imager is mounted and wirebonded.

## Known Issues / Difficuties

### Difficulty of Assembly

Unfortunately, this design is not easily assembled.  Once the rest of the board is assembled (i.e. after the Stonyman has been mounted and wirebonded), soldering the 2x6 0.5" header onto the board usually damages it due to the very tight layout.

### Lens and Lens Mount

The lens and lens mount are the same as CentEye's Stonyman breakout boards (with lenses).  The lens were originally purchased from a since forgotten seller on Alibaba.com.  Sourcing more lenses is unlikely.  There are about 40 lenses at the University of Michigan that CentEye actually gave us.

In addition, this design reuses CentEye's Stonyman lens mount from the breakout board.  CentEye was kind enough to share the design file for 3-D printing that lens mount, but the design is not known to be open source, and CentEye retains all rights.