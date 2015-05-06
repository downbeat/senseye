# Russ Bielawski
# The University of Michigan
# 2012-11-21: Creation (modified original cvEyeTracker project Makefile).
# 2015-03-20: Will now accept OPENCV_LOCATION as environment variable.

NAME=cvEyeTracker

COMPILER=g++

# You must set OPENCV_LOCATION for your platform (set OPENCV_LOCATION=<path>).
#    Examples of different places OpenCV might be installed:
#    /opt/local  ->  OS X via Macports.
#    /usr        ->  Debian variant via apt-get.
#    /usr/local  ->  Linux built from source.
ifndef OPENCV_LOCATION
   $(error 'You must define the OPENCV_LOCATION variable')
endif

OPENCV_INCS=-I$(OPENCV_LOCATION)/include/opencv -I$(OPENCV_LOCATION)/include
OPENCV_LIBDIRS=-L$(OPENCV_LOCATION)/lib
OPENCV_LIBS=-lopencv_core -lopencv_highgui -lopencv_imgproc -lopencv_ml

LIBDIRS=$(OPENCV_LIBDIRS)

LIBS=-lm -lopencv_core -lopencv_highgui -lopencv_imgproc

LIBGLASSES_DIR=../../libglasses1
LIBGLASSES_INCS=-I$(LIBGLASSES_DIR)
INCLUDES=$(OPENCV_INCS) $(LIBGLASSES_INCS)

DEFINES= -O2

SOURCES=$(NAME).c
OBJS = remove_corneal_reflection.o ransac_ellipse.o svd.o timing.o glasses.o
HEADDERS = remove_corneal_reflection.h ransac_ellipse.h svd.h timing.h

all : $(NAME)

$(NAME): $(NAME).o $(OBJS)
	$(COMPILER) -pg -o $(NAME) $(NAME).o $(OBJS) $(DEFINES) $(LIBDIRS) $(LIBS)

$(NAME).o: $(NAME).c $(HEADDERS)
	$(COMPILER) -c $(DEFINES) $(NAME).c $(DEFINES) $(INCLUDES)

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
	rm -f *.o $(NAME)
