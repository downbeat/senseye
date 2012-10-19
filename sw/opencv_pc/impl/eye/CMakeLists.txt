project( eye )
find_package( OpenCV REQUIRED )
add_executable( eye eye.c )
target_link_libraries( eye ${OpenCV_LIBS} )

