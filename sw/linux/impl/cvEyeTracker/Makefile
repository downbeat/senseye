# russ: if you're missing a file "linux/videodev.h", the workaround in linux is to symlink
#       /usr/include/linux/videodev.h -> /usr/include/linux/videodev2.h

COMPILER=g++

LIBDIRS=-L/usr/local/lib #-L/usr/X11R6/lib

LIBS=-lm -lopencv_core -lopencv_highgui -lopencv_imgproc #-lcvaux 

LIBGLASSES_DIR=../libglasses
INCLUDES=-I/usr/local/include/opencv -I$(LIBGLASSES_DIR)

DEFINES= -O2

SOURCES=cvEyeTracker.c
OBJS = remove_corneal_reflection.o ransac_ellipse.o svd.o timing.o glasses.o
HEADDERS = remove_corneal_reflection.h ransac_ellipse.h svd.h timing.h

all : cvEyeTracker

cvEyeTracker: cvEyeTracker.o $(OBJS)
	$(COMPILER) -pg -o cvEyeTracker cvEyeTracker.o $(OBJS) $(DEFINES) $(LIBDIRS) $(LIBS)

cvEyeTracker.o: cvEyeTracker.c $(HEADDERS)
	$(COMPILER) -c $(DEFINES) cvEyeTracker.c $(DEFINES) $(INCLUDES)

remove_corneal_reflection.o: remove_corneal_reflection.c $(HEADDERS)
	$(COMPILER) -c $(DEFINES) remove_corneal_reflection.c $(DEFINES) $(INCLUDES)

ransac_ellipse.o: ransac_ellipse.cpp $(HEADDERS)
	$(COMPILER) -c $(DEFINES) ransac_ellipse.cpp $(INCLUDES)

svd.o: svd.c $(HEADDERS)
	$(COMPILER) -c $(DEFINES) svd.c

timing.o: timing.c $(HEADDERS)
	$(COMPILER) -c $(DEFINES) timing.c

glasses.o: $(LIBGLASSES_DIR)/glasses.c $(HEADDERS) $(LIBGLASSES_DIR)/glasses.h
	$(COMPILER) -c $(DEFINES) $(LIBGLASSES_DIR)/glasses.c $(INCLUDES)

clean:
	rm -f *.o cvEyeTracker


