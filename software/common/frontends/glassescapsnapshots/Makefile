# Russ Bielawski
# The University of Michigan
# 2012-11-15: Creation.
# 2015-01-31: Modified for OS X.
# 2015-03-20: Will now accept OPENCV_LOCATION as environment variable.

NAME=glassescapsnapshots

CC=gcc
CFLAGS=-O2 -Wall -g

# You must set OPENCV_LOCATION for your platform (export OPENCV_LOCATION=<path>).
#    Examples of different places OpenCV might be installed:
#    /opt/local  ->  OS X via Macports.
#    /usr        ->  Debian variant via apt-get.
#    /usr/local  ->  Linux built from source.
ifndef OPENCV_LOCATION
   $(error 'You must define the OPENCV_LOCATION environment variable')
endif

OPENCV_INC=-I$(OPENCV_LOCATION)/include/opencv -I$(OPENCV_LOCATION)/include
OPENCV_LIBDIRS=-L$(OPENCV_LOCATION)/lib
OPENCV_LIBS=-lopencv_core -lopencv_highgui -lopencv_imgproc


ifndef LIBGLASSES_LOCATION
   LIBGLASSES_LOCATION=../../libglasses
   $(info LIBGLASSES_LOCATION variable not set, assuming $(LIBGLASSES_LOCATION).)
endif
ifndef LIBGLASSES1_LOCATION
   LIBGLASSES1_LOCATION=../../libglasses1
   $(info LIBGLASSES1_LOCATION variable not set, assuming $(LIBGLASSES1_LOCATION).)
endif
LIBGLASSES_INC=-I$(LIBGLASSES_LOCATION) -I$(LIBGLASSES1_LOCATION)
LIBGLASSES_SRC=$(LIBGLASSES_LOCATION)/glasses_util.c $(LIBGLASSES1_LOCATION)/glasses.c

INC=$(OPENCV_INC) $(LIBGLASSES_INC)
SRC=$(NAME).c $(LIBGLASSES_SRC)
BIN=$(NAME)

LIBS=$(OPENCV_LIBDIRS) $(OPENCV_LIBS)


all:	$(NAME)

$(NAME):	$(SRC)
	$(CC) $(CFLAGS) $(INC) $(SRC) $(LIBS) -o $(BIN)

clean:
	rm -f $(BIN)
	rm -rf $(BIN).dSYM
