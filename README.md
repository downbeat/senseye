# SensEye

SensEye is a low-power, wireless gaze detection system.

<img src="https://raw.githubusercontent.com/downbeat/senseye-data/master/media/eye_scene_example_frames/single_still_frame.bmp" alt="SensEye v0.2" style="width: 50%;"/>

## SensEye v1 and v2

[SensEye v1](SENSEYE_V1.md) is a fully implemented prototype wireless eyetracker system based on cloud offloading and machine learning.  SensEye v2 is the started, incomplete, but [not yet fully abandonded](https://github.com/lab11/SensEye-2), second generation eye tracking capture platform, capable of streaming data from two imagers at 29 frames-per-second (FPS) over a pseudo-HTTP 1.0 interface.

## Authors

SensEye v1 is the work of Joe Romeo, Justin Paupore and me, Russ Bielawski.  SensEye v2, insofar as it existed within the time frame of this repository, is my sole, personal work as a Graduate Student Research Assistant (GSRA) of [Prabal Dutta](https://web.eecs.umich.edu/~prabal)'s in 2012-2013.

## Major git Repo Reorganization

The SensEye git repository was, for a long time, in need of serious reorganization.  In addition to reorganization, I took the opportunity to finish a few things I always wanted to finish (I couldn't resist).

I have done some pretty gnarly hacking on the git repository, up to and including using <a href="https://help.github.com/articles/remove-sensitive-data/">filter-branch</a> to permanently purge irrelevant data which should have never been stored in the source repo in the first place.

**If you have an old SensEye git repository cloned prior to 2015, you must peform a rebase or clone the repo anew.**

## Repository Organization and Contents

The root of the SensEye repository is split into hardware and software subdirectories.  Any technical documentation is intermingled.  Under both hardware and software, there are three directories: common, v1 and v2.  The distinction between what goes in these directories should be clear: SensEye v1 artifacts are found in v1, SensEye v2 artifacts are found in v2 and artifacts which are common to both are in found in common.

### Data Processing Interchange Protocol and Frontends

Frontends (for *nix), such as glasses_display, glasses_record and capture_replay, utilize the Glasses Data Protocol (GDP) v1 (or, pre-v1, called v0) to pass data between one another.

During the cleanup of this repository, I took time to formalize the protocol and data exchange (recoreded file on disk) formats.  Glasses Data Protocol (GDP) v1 and Glasses Data Exchange Format (GDF) are both implemented in a C library, libglasses2.  The formal protocol makes minor changes making the adaptation of existing code minor. 

#### Limitations of the Protocol 

The data processing protocol is fine for exchanging image data between data processing programs.  However, the protocol lacks any support for color images or scalar data such as the known gaze location, which it really needs to support all the unimplemented features to encompass all the needs of existing frontends in a standardized way.

### Running the PC Frontend Code

Most of the frontend code for SensEye is not v1 or v2 specific, with the exception of the capture frontends for each which receiver the data from the hardware differently.  The common frontend code is found in [/software/common/frontends/](software/common/frontends/).  The PC frontend code was written for linux, but most seems to build and run fine on OS X with OpenCV installed via MacPorts.

The frontends are connected via the Glasses Data Protocol (GDP), and can be connected via pipes.  To understand what a particulare frontend does, consult the help text for that program.  As a simple (and common) example, this command will capture data from SensEye glasses and both display the images on the screen and record the capture to disk in Glasses Data Exchange Formate (GDF):

    glasses_capture | tee >(glasses_display) | glasses_record -o <path>

#### The Demo

**Sadly, the demo crashes on OS X, and I've not spent any time trying to fix it.**

To run the demo:

     glasses_capture | demo

#### Other platforms

##### Android

When SensEye was conceived, the smartphone was envisioned to be the powerful co-processing device which enables the eye tracking.  A simple proof-of-concept capture frontend (called "frame grabber") was developed for Android, but that was a long time ago.  Most frontend software was written for a linux PC because it was the easiest way to make the most progress as quickly as possible.

## Funding

SensEye was supported by the National Science Foundation, NSF Grant 1239341.
