project( captureEyeDetect )
find_package( OpenCV REQUIRED )
add_executable( captureEyeDetect captureEyeDetect.c )
target_link_libraries( captureEyeDetect ${OpenCV_LIBS} )

