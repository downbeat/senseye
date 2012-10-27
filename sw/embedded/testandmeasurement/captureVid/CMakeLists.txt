project( captureStream )
find_package( OpenCV REQUIRED )
add_executable( captureStream captureStream.c )
target_link_libraries( captureStream ${OpenCV_LIBS} )

