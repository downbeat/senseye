# Russ Bielawski
# The University of Michigan
# 2012-11-15: Creation.
# 2015-04-12: Improvements.

NAME=glassescapture

CC=gcc
CFLAGS=-O2 -Wall -g


ifndef LIBGLASSES1_LOCATION
   LIBGLASSES1_LOCATION=../../../common/libglasses1
   $(info LIBGLASSES1_LOCATION variable not set, assuming $(LIBGLASSES1_LOCATION).)
endif
LIBGLASSES_INC=-I$(LIBGLASSES1_LOCATION)
LIBGLASSES_SRC=$(LIBGLASSES1_LOCATION)/glasses.c

INC=$(LIBGLASSES_INC)
SRC=$(NAME).c $(LIBGLASSES_SRC)
BIN=$(NAME)

LIBS=


all:	$(NAME)

$(NAME):	$(SRC)
	$(CC) $(CFLAGS) $(INC) $(SRC) $(LIBS) -o $(BIN)

clean:
	rm -f $(BIN)
	rm -rf $(BIN).dSYM
