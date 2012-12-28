# Russ Bielawski
# 2012-11-15

NAME=ml_edgefeatures_knearest

CC=g++
CFLAGS=-O2 -Wall -g -felide-constructors


OPENCV_INC=/usr/local/include/opencv
OPENCV_LIBS=-lopencv_core -lopencv_highgui -lopencv_imgproc -lopencv_ml

LIBGLASSES_INC=../libglasses
LIBGLASSES_SRC=$(LIBGLASSES_INC)/glasses.c

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

