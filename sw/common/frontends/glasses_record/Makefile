# Russ Bielawski
# 2012-11-15: Creation.

NAME=glasses_record

CC=gcc
CFLAGS=-O2 -Wall -g


OPENCV_INC=/usr/local/include/opencv
OPENCV_LIBS=-lopencv_core -lopencv_highgui -lopencv_imgproc

LIBGLASSES_INC=../../libglasses
LIBGLASSES_SRC=$(LIBGLASSES_INC)/glasses_util.c    \
               $(LIBGLASSES_INC)/glasses_proto.c   \
               $(LIBGLASSES_INC)/glasses_format.c

INC=-I$(OPENCV_INC) -I$(LIBGLASSES_INC)
SRC=$(NAME).c $(LIBGLASSES_SRC)
BIN=$(NAME)

LIBS=$(OPENCV_LIBS)


all:	$(NAME)

$(NAME):	$(SRC)
	$(CC) $(CFLAGS) $(INC) $(SRC) $(LIBS) -o $(BIN)

clean:
	rm -f $(BIN)

