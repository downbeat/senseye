# SensEye

**If you have an old SensEye git repository cloned prior to 2015, you must peform a rebase or clone the repo anew.**

SensEye is a low-power platform for gaze detection.

## Major git Repo Reorganization

The SensEye git repository was, for a long time, in need of serious reorganization.

I have done some pretty gnarly hacking on the git repository, up to and including using <a href="https://help.github.com/articles/remove-sensitive-data/">filter-branch</a> to permanently purge irrelevant data which should have never been stored in the source repo in the first place.

**If you have an old SensEye git repository cloned prior to 2015, you must peform a rebase or clone the repo anew.**

## Repository Organization

### SensEye v1 (a.k.a. Insight v1)

SensEye v1 was built on the <a href="https://www.pjrc.com/teensy/teensy31.html">Teensy 3.0</a>.  All data capture is done using the Kinetis K20 microcontroller, digitizing pixels with the integrated 12-bit ADC.  For this reason, the system tops out at around 2.7 frames-per-second (FPS) when capturing from both cameras.  In addition, to achieve the best possible performance, the system controls both the scene and eye cameras at the same time, scanning through the respective pixels of the two cameras in synchronicity.

### SensEye v2

SensEye v2 is based on the Microsemi (previously Actel) SmartFusion customizable System-on-a-Chip (cSoC).  It is capable of capturing from two cameras at over 20 FPS each.

### Data Processing Interchange Protocol and Frontends

#### Limitations of the Protocol

The data processing protocol is fine for exchanging image data between data processing programs.  However, the protocol lacks any support for color images or scalar data such as the known gaze location.

## Running the Code

### Supported platforms

#### PCs

The non-embedded software was all written on and for a linux machine.  That said, OS X should support just about everything necessary to get the code running without major changes.  Non-*nix-based OS support (e.g. MS Windows), however, is less likely to ever happen.

#### Smartphones

When SensEye was conceived, the smartphone was envisioned to be the powerful co-processing device which enables the eye tracking.  A simple proof-of-concept frame grabber was developed for Android, but that was a long time ago.  Most software was written for a linux PC because it was the easiest way to make the most progress as quickly as possible.  So, while smartphone frontends are definitely possible, there is currently no support.

## Funding

SensEye is (was) an NSF funded research project under grant #.........

## License

The SensEye source code will be released under and open-source license (most likely GPL).  As I am cleaning up the repository, I will add the necessary headers and files to comply with whatever license is chosen.