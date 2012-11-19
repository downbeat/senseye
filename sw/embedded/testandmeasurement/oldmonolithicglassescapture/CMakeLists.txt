project( glassescapture )
#TODO russ: build OpenCV with static linking
#option( -D BUILD_SHARED_LIBS=OFF )
find_package( OpenCV REQUIRED )
add_executable( glassescapture glassescapture.c )
target_link_libraries( glassescapture ${OpenCV_LIBS} )
