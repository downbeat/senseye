EXEC = senseye-serv

CFLAGS		:= -Os -mcpu=cortex-m3 -mthumb -I$(INSTALL_ROOT)/A2F/root/usr/include -I../../../../embedded/impl/common/masks -I ../stonyman_drv
LDFLAGS		:= -mcpu=cortex-m3 -mthumb -L$(INSTALL_ROOT)/A2F/root/usr/lib

OBJS = $(EXEC).o

CC = $(CROSS_COMPILE_APPS)gcc

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $(OBJS) $(LDLIBS)

clean:
	-rm -f $(EXEC) *.gdb *.o

#$(OBJS): senseye-serv.h
