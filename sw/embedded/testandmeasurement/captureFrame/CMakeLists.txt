project( captureFrame )
find_package( OpenCV REQUIRED )
add_executable( captureFrame captureFrame.c )
target_link_libraries( captureFrame ${OpenCV_LIBS} )

