# SensEye

SensEye is a low-power, wireless gaze detection system.

<img src="https://raw.githubusercontent.com/downbeat/senseye-data/master/media/eye_scene_example_frames/single_still_frame.bmp" alt="SensEye v0.2" style="width: 50%;"/>

## SensEye v1 and v2

[SensEye v1](SENSEYE_V1.md) is a fully implemented prototype wireless eyetracker system based on cloud offloading and machine learning.  SensEye v2 is the started, incomplete, [but not abandonded](https://github.com/lab11/SensEye-2), second generation eye tracking capture platform, capable of streaming data from two imagers at 29 frames-per-second (FPS) over a pseudo-HTTP 1.0 interface.

## Authors

SensEye v1 is the work of Joe Romeo, Justin Paupore and me, Russ Bielawski.  SensEye v2, insofar as it existed within the time frame of this repository, is my sole, personal work as a Graduate Student Research Assistant (GSRA) of [Prabal Dutta](https://web.eecs.umich.edu/~prabal)'s in 2012-2013.

## Major git Repo Reorganization

The SensEye git repository was, for a long time, in need of serious reorganization.  In addition to reorganization, I took the opportunity to finish a few things (I couldn't resist).

I have done some pretty gnarly hacking on the git repository, up to and including using <a href="https://help.github.com/articles/remove-sensitive-data/">filter-branch</a> to permanently purge irrelevant data which should have never been stored in the source repo in the first place.

**If you have an old SensEye git repository cloned prior to 2015, you must peform a rebase or clone the repo anew.**

## Repository Organization and Contents

The root of the SensEye repository is split into hardware and software subdirectories.  Any technical documentation is intermingled (generally in the form of README files).  Under both hardware and software, there are three directories: common, v1 and v2.  The distinction between what goes in these directories should be clear: SensEye v1 artifacts are found in v1, SensEye v2 artifacts are found in v2 and artifacts which are common to both are in found in common.

### Data Processing Interchange Protocol and Frontends

Frontends (for *nix), such as glasses_display, glasses_record and capture_replay, utilize the Glasses Data Protocol (GDP) v1 (or, pre-v1, called v0) to pass data between one another.

During the cleanup of this repository, I took time to formalize the protocol and data exchange (recoreded file on disk) formats.  Glasses Data Protocol (GDP) v1 and Glasses Data Exchange Format (GDF) v1 are both implemented in a C library, libglasses2.  This formalization of the previously not-formal protocol makes as few changes as possible to allow painless adaptation of existing code. 

#### Limitations of the Protocol 

The data processing protocol is fine for exchanging image data between data processing programs (frontends) in grayscale.  However, the protocol lacks any support for color images or scalar data such as the known gaze location, which it really needs in order to support all the non-standard features of the existing frontends in a standardized way.

### Running the PC Frontend Code

Most of the frontend code for SensEye is not v1 or v2 specific, with the exception of the capture frontends for each, which receive the data from the hardware differently and output the data over stdout according to GDP (currently v0).  The common frontend code is found in [/software/common/frontends/](software/common/frontends/).  The PC frontend code was written for Linux, but most seems to build and run fine on OS X with OpenCV installed via MacPorts.

The frontends are connected via the Glasses Data Protocol (GDP), and can be connected via pipes.  To understand what a particulare frontend does, consult the help text for that program.  As a simple (and common) example, this command will capture data from SensEye glasses and both display the images on the screen and record the capture to disk in Glasses Data Exchange Formate (GDF):

    glasses_capture | tee >(glasses_display) | glasses_record -o <path>

#### The Demo

**Sadly, the demo crashes on OS X, and I've not spent any time trying to fix it.**

To run the demo:

     glasses_capture | demo

For a description of how to use the demo, see [http://energy.eecs.umich.edu/wiki/doku.php?id=proj:insight:insight_linux_utils](http://energy.eecs.umich.edu/wiki/doku.php?id=proj:insight:insight_linux_utils).

#### Other platforms

##### Android

When SensEye was conceived, it was envisioned that smartphones would be used as the powerful co-processing device to perform the really processor and memory intensive operations (such as the machine learning classifier).  A simple proof-of-concept capture frontend (called "frame grabber") was developed for Android, and is found in the repository at [/software/v1/capture_frontend/android](software/v1/capture_frontend/android).  Most of the interesting data processing frontend software was written for a Linux PC because it was the easiest way to make the most progress as quickly as possible.

## Funding

SensEye was supported by the National Science Foundation, NSF Grant 1239341.
