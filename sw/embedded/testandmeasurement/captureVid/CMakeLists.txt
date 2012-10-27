project( grabvid )
find_package( OpenCV REQUIRED )
add_executable( grabvid grabvid.c )
target_link_libraries( grabvid ${OpenCV_LIBS} )

