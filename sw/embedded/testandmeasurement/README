===============================================================================
design expo demo
===============================================================================
just go into the 'demo' directory


===============================================================================
do this to build everything
(you need opencv for everything to build happily, or you can disregard the slew
of errors and it should still build the utilities that read data from the
glasses).
===============================================================================
 - run makeall.sh (unfortunately, for many utils you need OpenCV libs)
 - utilities are put in ./bin


===============================================================================
basic usecases
===============================================================================
Want to capture from some glasses and NOT save the data?
$ glassescapstream | frontdisplayandsave -q

Want to capture from some glasses and save the data?
$ glassescapstream | frontdisplayandsave -o <outputpath>

Want to replay some captured data?
$ glassesreplaystream -i <inputpath(directory)> | frontdisplayandsave [-q|-o ...]


You get the point.  Most utils are front ends and should be attached to a
capture utility or a replay utility as a backend.



=== BENEATH HERE IS SOMEWHAT OUTDATED ===


===============================================================================
capture utilities
===============================================================================
glassescapstream    - grab data from glasses, pump out frames on stdout
                      (no opencv needed)
glassescapsnapshot  - grab data from glasses one frame at a time, "" ""
                      (no opencv needed)
glassesreplaystream - replay a folder full of pictures and an FPS metadata file


===============================================================================
(re)play utilities (these all read data from stdin without knowing if its live
                    or replay)
===============================================================================
frontdisplayandsave    - display to the screen and, optionally, save it (as
                         BMPs and an FPS metadata file)
fronteyedetect         - try to detect center of the pupil
gazesetgroundtruth     - replay a set of eye and scene images and the user must
                         click the eyes gaze in each scene image.
frontgazecoordsoverlay - this takes frame data on stdin but needs to read
                         metadata files for gaze locations and bad frames flags
cvEyeTracker           - see http://thirtysixthspan.com/openEyes/software.html

