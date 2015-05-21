# SensEye v1

SensEye v1, initially called the InSight gaze detection system, is the first scratch SensEye prototype.  This original prototype system is based on the [Teensy 3.0 prototyping board](https://www.pjrc.com/store/teensy3.html).  Bluetooth 3.0 EDR connectivity, a lithium battery charging circuit and voltage regulation for the power coming from the battery are added via a custom PCB piggybacking on the Teensy 3.0 board.

<!-- ## Hardware Capture Performance

The SensEye v1 hardware is capable, over Bluetooth, of capturing from a single camera at roughly 5 frames per second (FPS) or two cameras at slightly more than half that rate, 2.7 FPS.  On a single charge, the wireless glasses will last up to 4.5 hours on a single change of the 800 mAh lithium ion battery (a figure calculated based on average power draw measurements of the device in operation).-->

### Camera Hardware Unavailability

The SensEye prototypes use the [Centeye](http://www.centeye.com/) Stonyman imager chip implemented as a camera on Centeye's breakout board with lens, providing 112 x 112 individually accessible pixels in gray scale (output as an analog signal representing a single pixel's intensity on a logarithmic scale).  Unfortunately, due to a tweak in Centeye's business model, they are no longer selling Stonyman breakout boards.  Design artifacts, such as the Stonyman user manual or breakout board schematic, are still available at [http://www.ardueye.com/](http://www.ardueye.com/) and [https://github.com/ArduEye/ArduEyeDocs](https://github.com/ArduEye/ArduEyeDocs).

## SensEye v1 Versions

### SensEye v1.1

SensEye v1.1 is the first (and final) fully working SensEye v1 prototype.  A piggyback PCB for the [Teensy 3.0 board](https://www.pjrc.com/store/teensy3.html) adds "Classic" Bluetooth 3.0, a.k.a EDR, via the [ST Micro SPBT2632C2A](http://www.st.com/web/catalog/sense_power/FM2185/CL1976/SC1324/PF253470) module, along with circuitry to charge and regulate incoming power from a lithium ion battery.  The full PCB (the SensEye piggyback board soldered onto a Teensy 3.0 board) is mounted on one arm of the glasses chassis, nominally [a pair of knock-off wayfarers](http://www.amazon.com/Wayfarer-Polarized-Sunglasses-Protect-Harmful/dp/B0042FM1VA) with the lenses punched out.  A [Trustfire 600 mAh 3.7 V 10440 (AAA form-factor)](http://www.amazon.com/TrustFire-Rechargeable-Lithium-Battery-Protected/dp/B00KTTFN68/) lithium ion battery is mounted on the other arm of the glasses chassis (secured in a AAA socket).  Wires are manually soldered soldered.  Black electrical tape fixes everything onto the chasses and modified paperclips are used to better secure the eye-facing camera (and provide position flexibility).

##### SensEye v1.1 Glasses (Final Prototype)

<img src="https://raw.githubusercontent.com/downbeat/legacy-senseye/master/media/pictures/senseye_1_1_med.jpg" alt="SensEye v1.1" style="width: 100%;"/>

### SensEye v1.0

SensEye v1.0 is the first run of the piggyback PCB.  Although the SensEye v1.0 glasses hardware worked intermittently, it was never reliable, primarily due to an issue in the Bluetooth module's PCB footprint.  SensEye v1.1 fixed the footprint as well as removing JST connectors for the cameras due to their poor connection, opting instead to directly solder wires between the camera boards and the Teensy board.  No distinction is made between the firmware for v1.0 and v1.1, as all improvements were in hardware.  

##### SensEye v1.0 Glasses

<img src="http://energy.eecs.umich.edu/wiki/lib/exe/fetch.php?cache=&w=900&h=600&tok=f2a653&media=proj:insight:insight_1_0.jpg" alt="SensEye v1.0" style="width: 100%;"/>

### SensEye 0.x Alpha

SensEye 0.x (alpha) versions are those SensEye v1 versions prior to the addition of the piggybacked PCB and, therefore, lack Bluetooth or a battery.  A USB connection is required both for power and as the data connection to a co-processing device (such as a smartphone or PC).  The SensEye v0.x glasses hardware is easy to build by mounting a Teensy 3.0 and two Stonyman imager breakout boards onto a glasses frame, usually without lenses.  Wires are soldered between the camera breakout boards and the Teensy board and, optionally, a AAA battery is added to counter balance the Teensy board and additional weight from the USB cable when connected.

The distinction between v0.1 and v0.2 is the addition of the scene camera to SensEye v0.2 (and additional firmware modifications to support that change).  SensEye v0.1 is no longer of practical value, as it does nothing that SensEye v0.2 cannot without significantly providing any additional benefit.

The SensEye v0.1 and SensEye v0.2 glasses reference designs are pictured below.

##### SensEye Alpha v0.1 and v0.2 Glasses Side-by-Side

<!-- ![SensEye v0.2](https://raw.githubusercontent.com/downbeat/senseye/master/media/pictures/both_alphas.jpg) -->

<img src="https://raw.githubusercontent.com/downbeat/legacy-senseye/master/media/pictures/both_alphas.jpg" alt="SensEye v0.1 & v0.2" style="width: 100%;"/>

##### SensEye Alpha v0.2 Glasses

<!-- ![SensEye v0.2](http://energy.eecs.umich.edu/wiki/lib/exe/fetch.php?cache=&media=proj:insight:insight_0_2_alpha_2.jpg) -->

<img src="http://energy.eecs.umich.edu/wiki/lib/exe/fetch.php?cache=&media=proj:insight:insight_0_2_alpha_2.jpg" alt="SensEye v0.2" style="width: 100%;"/>

## SensEye Reproduction

### SensEye v1.1 Glasses

#### PCB

The SensEye piggyback PCB was designed in [Eagle](http://www.cadsoftusa.com/) 6, and the design files are available in the [main SensEye git repository on GitHub](https://github.com/downbeat/senseye) at [/hw/pcb/impl/teensy-shield](https://github.com/downbeat/senseye/tree/master/hw/pcb/impl/teensy-shield).  Hardware design files for SensEye have been released under a Creative Commons Share AAlike

##### SensEye v1.1 PCB with US Quarters for Scale

<img src="./senseye__board_1_1-cropped-rotated-med.jpg" alt="SensEye v1.1 PCB with US Quarters for Scale" style="width: 100%;"/>


##### BOM

todo

### Firmware

The embedded software for SensEye v1 runs on the Teensy 

## Frontend Software
