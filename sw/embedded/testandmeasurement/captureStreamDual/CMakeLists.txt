project( captureStreamDual )
find_package( OpenCV REQUIRED )
add_executable( captureStreamDual captureStreamDual.c )
target_link_libraries( captureStreamDual ${OpenCV_LIBS} )

