# SensEye v1

SensEye v1, initially called the InSight gaze detection system, is the first scratch SensEye prototype.  Joe Romeo, Justin Paupore and Russ Bielawski built this full system in the Fall of 2012.

This original prototype system is based on the [Teensy 3.0 prototyping board](https://www.pjrc.com/store/teensy3.html).  Bluetooth 3.0 EDR connectivity, a lithium battery charging circuit and voltage regulation for the power coming from the battery are added via a custom PCB piggybacking on the Teensy 3.0 board, which is connected directly to the imager breakout boards.  [CentEye](http://www.centeye.com)'s ultra low-power [Stonyman imagers](http://www.centeye.com/2012/02/new-ardueye-using-stonyman-image-sensor-chips/) (and breakout board) are used to capture images of both the wearer's eye and visual scene simultaneously.

## SensEye v1 Versions

### SensEye v1.1

SensEye v1.1 is the first (and final) fully working SensEye v1 prototype.  A piggyback PCB for the [Teensy 3.0 board](https://www.pjrc.com/store/teensy3.html) adds "Classic" Bluetooth 3.0, a.k.a EDR, along with circuitry to charge and regulate incoming power from a lithium ion battery.  The full PCB (the SensEye piggyback board soldered onto a Teensy 3.0 board) is mounted on one arm of the glasses chassis, nominally [a pair of knock-off wayfarers](http://www.amazon.com/Wayfarer-Polarized-Sunglasses-Protect-Harmful/dp/B0042FM1VA) with the lenses punched out.  A [Trustfire 600 mAh 3.7 V 10440 (AAA form-factor)](http://www.amazon.com/TrustFire-Rechargeable-Lithium-Battery-Protected/dp/B00KTTFN68/) lithium ion battery is mounted on the other arm of the glasses chassis (secured in a AAA socket).  Wires are directly soldered between the imager breakout boards and the Teensy 3.0 pins.  Black electrical tape fixes everything onto the chasses and modified paperclips are used to better secure the eye-facing camera (and provide position flexibility).

##### SensEye v1.1 Glasses (Final Prototype)

<img src="https://raw.githubusercontent.com/downbeat/senseye-data/master/media/pictures/senseye_1_1_med.jpg" alt="SensEye v1.1" style="width: 100%;"/>

### SensEye v1.0

SensEye v1.0 is the first run of the piggyback PCB.  Although the SensEye v1.0 glasses hardware worked intermittently, it was never reliable, primarily due to an issue in the Bluetooth module's PCB footprint.  SensEye v1.1 fixed the footprint as well as removing JST connectors for the cameras due to their poor connection, opting instead to directly solder wires between the camera boards and the Teensy board.  No distinction is made between the firmware for v1.0 and v1.1, as all improvements were in hardware.  

##### SensEye v1.0 Glasses

<img src="http://energy.eecs.umich.edu/wiki/lib/exe/fetch.php?cache=&w=900&h=600&tok=f2a653&media=proj:insight:insight_1_0.jpg" alt="SensEye v1.0" style="width: 100%;"/>

### SensEye 0.x Alpha

SensEye 0.x (alpha) versions are those SensEye v1 versions prior to the addition of the piggybacked PCB and, therefore, lack Bluetooth or a battery.  A USB connection is required both for power and as the data connection to a co-processing device (such as a smartphone or PC).  The SensEye v0.x glasses hardware is easy to build by mounting a Teensy 3.0 and two Stonyman imager breakout boards onto a glasses frame, usually without lenses.  Wires are soldered between the camera breakout boards and the Teensy board and, optionally, a AAA battery is added to counter balance the Teensy board and additional weight from the USB cable when connected.

The distinction between v0.1 and v0.2 is the addition of the scene camera to SensEye v0.2 (and additional firmware modifications to support that change).  SensEye v0.1 is no longer of practical value, as it does nothing that SensEye v0.2 cannot without significantly providing any additional benefit.

The SensEye v0.1 and SensEye v0.2 glasses reference designs are pictured below.

##### SensEye Alpha v0.1 and v0.2 Glasses Side-by-Side

<img src="https://raw.githubusercontent.com/downbeat/senseye-data/master/media/pictures/both_alphas.jpg" alt="SensEye v0.1 & v0.2" style="width: 100%;"/>

##### SensEye Alpha v0.2 Glasses

<img src="http://energy.eecs.umich.edu/wiki/lib/exe/fetch.php?cache=&media=proj:insight:insight_0_2_alpha_2.jpg" alt="SensEye v0.2" style="width: 100%;"/>

## Hardware

Data capture and transmission is done with the Teensy's the Kinetis K20 (Freescale ARM Cortex-M4) microcontroller, digitizing pixels with the integrated 12-bit ADC.  For this reason, the system tops out at around 2.7 frames-per-second (FPS) when capturing from both cameras.  In addition, to achieve the best possible performance, the system controls both the scene and eye cameras at the same time, scanning through the respective pixels of the two cameras synchronously.  Bluetooth is provided via an [ST Micro SPBT2632C2A](http://www.st.com/web/catalog/sense_power/FM2185/CL1976/SC1324/PF253470) module.

##### SensEye v1.1 PCB with US Quarters for Scale

<img src="https://raw.githubusercontent.com/downbeat/senseye-data/master/media/pictures/senseye__board_1_1-cropped-rotated-med.jpg" alt="SensEye v1.1 PCB with US Quarters for Scale" style="width: 100%;"/>

### Imager Hardware and Current Unavailability

The SensEye prototypes use the [Centeye](http://www.centeye.com/) Stonyman imager chip implemented as a camera on Centeye's breakout board with lens, providing 112 x 112 individually accessible pixels in gray scale (output as an analog signal representing a single pixel's intensity on a logarithmic scale).  Unfortunately, CentEye no longer offers the Stonyman breakout boards.  Design artifacts, such as the Stonyman user manual or breakout board schematic, are still available at [http://www.ardueye.com/](http://www.ardueye.com/) and [https://github.com/ArduEye/ArduEyeDocs](https://github.com/ArduEye/ArduEyeDocs).

### Hardware Performance

The SensEye v1 hardware is capable, over Bluetooth, of streaming image data from a both cameras simultaneously at 2.7 frames-per-second (FPS).  On a single charge, the wireless glasses will theoretically last over 6 hours on a single change of the 600 mAh lithium ion battery (calculated using the observed power consumption of the hardware while actively capturing and streaming wirelessly).  The glasses draw around under 300 mW while in active use (including power to continuously capture data from the imagers and transmit that data to a co-processing device over Bluetooth).

## SensEye Reproduction

### SensEye v1.1 Glasses Hardware

#### PCB

The SensEye piggyback PCB was designed in [Eagle](http://www.cadsoftusa.com/) 6, and the design files are available in the [main SensEye git repository on GitHub](https://github.com/downbeat/senseye) at [/hardware/v1/teensy-shield](https://github.com/downbeat/senseye/tree/master/hardware/v1/teensy-shield).  These files are available under a Creative Commons Share Alike license.

#### Glasses Assembly

To assemble the SensEye v1.1 PCB (including piggybacking on the Teensy 3.0 board) refer to the schematic, board files and images of an assebled PCB such as the one above).  The [instructions for assembling the SensEye Alpha2 (v0.2) glasses](http://energy.eecs.umich.edu/wiki/doku.php?id=proj:insight:howto:build_insight_glasses) are mostly applicable to assembling a pair of SensEye v1.1 with some common sense.

##### Lithium Ion Battery

The primary addition beyond the SensEye Alpha2 assembly instructions linked above (and the addition of the piggyback PCB) is the Lithium Ion battery.  SensEye v1.1 uses a single [Trustfire 10440 Lithium battery](http://www.amazon.com/TrustFire-Rechargeable-Lithium-Battery-Protected/dp/B00KTTFN68) mounted to the glasses arm opposite the PCB.  It does not matter which goes on which arm, nor which eye the eye-facing imager is pointed at.  In addition, any 3.7V lithium battery **with protection circuit** should work.  However, it might be safest to use the battery we have proven out.  The Trustfire battery is the size of a standard AAA, so it is easy to find a terminal/holster, for example on DigiKey.  Although many battery holsters for AAA batteries allow insertion and removal, the AAA form factor was chosen for its appealing shape, rather than the ability to frequenty remove the battery from the ssytem.  SensEye v1.1 has a battery charging circuit, and once inserted, the lithium ion battery can be charged via USB (connected to the Teensy 3.0 board's micro USB connector).

**Due to the risk of inadvertent, incorrect insertion, it is highly recommended that the battery be secured into the holster once properly inserted, for example with even more electrical tape.**

### Frontend Software

See the [README](README.md) for details on running the frontend software, including the demo, once the glasses are assembled.
