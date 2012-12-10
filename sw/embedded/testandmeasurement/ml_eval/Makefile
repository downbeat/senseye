# Russ Bielawski
# 2012-12-07

NAME=ml_eval

CC=g++
CFLAGS=-O2 -Wall -g -felide-constructors


OPENCV_INC=/usr/local/include/opencv
OPENCV_LIBS=-lopencv_core -lopencv_highgui -lopencv_imgproc -lopencv_ml

LIBGLASSES_INC=../libglasses
LIBGLASSES_SRC=$(LIBGLASSES_INC)/glasses.c $(LIBGLASSES_INC)/glasses_cv.c $(LIBGLASSES_INC)/glasses_ml.c

INC=-I$(OPENCV_INC) -I$(LIBGLASSES_INC)
SRC=$(NAME).cpp $(LIBGLASSES_SRC)
BIN=$(NAME)

#LIBDIR=-L/usr/local/lib
LIBS=$(OPENCV_LIBS)


all:	$(NAME)

$(NAME):	$(SRC)
	$(CC) $(CFLAGS) $(INC) $(SRC) $(LIBS) -o $(BIN)

clean:
	rm -f $(BIN)

