#************************************************************************
#
# Russ Bielawski (jbielaws@umich.edu)
#
# SensEye/Insight v1.1 makefile for Teensy 3.0.
#
# -------  ----------  -------------------------------------------------
# VERSION  DATE        DESCRIPTION
# -------  ----------  -------------------------------------------------
# 1.00     2013-12-20  Adapted from my example teensy 3.0 makefile.
# -------  ----------  -------------------------------------------------
#
#************************************************************************


# The name of your project (used to name the compiled .hex file)
TARGET = dualcameracapture

# configurable options
OPTIONS = -DF_CPU=48000000 -DUSB_SERIAL -DLAYOUT_US_ENGLISH

ARDUINOPATH=/Applications/Arduino.app/Contents/Java/

LIBTEENSY_PATH=../common/libteensy3
MASKSPATH=../../../common/imager_masks

LINKERFILE=$(LIBTEENSY_PATH)/mk20dx128.ld

INC=$(LIBTEENSY_PATH) $(MASKSPATH)


#************************************************************************
# Location of Teensyduino utilities, Toolchain, and Arduino Libraries.
# To use this makefile without Arduino, copy the resources from these
# locations and edit the pathnames.  The rest of Arduino is not needed.
#************************************************************************

# path location for Teensy Loader, teensy_post_compile and teensy_reboot
TOOLSPATH = $(ARDUINOPATH)/hardware/tools   # on Linux
#TOOLSPATH = ../../../tools/avr/bin   # on Mac or Windows

# path location for Arduino libraries (currently not used)
LIBRARYPATH = $(ARDUINOPATH)/libraries

# path location for the arm-none-eabi compiler
COMPILERPATH = $(ARDUINOPATH)/hardware/tools/arm/bin

#************************************************************************
# Settings below this point usually do not need to be edited
#************************************************************************

# CPPFLAGS = compiler options for C and C++
CPPFLAGS = -Wall -g -Os -mcpu=cortex-m4 -mthumb -nostdlib -MMD $(OPTIONS) -I. $(patsubst %,-I%,$(INC))

# compiler options for C++ only
CXXFLAGS = -std=gnu++0x -felide-constructors -fno-exceptions -fno-rtti

# compiler options for C only
CFLAGS =

# linker options
LDFLAGS = -Os -Wl,--gc-sections -mcpu=cortex-m4 -mthumb -T$(LINKERFILE)

# additional libraries to link
LIBS = -lm


# names for the compiler programs
CC = $(abspath $(COMPILERPATH))/arm-none-eabi-gcc
CXX = $(abspath $(COMPILERPATH))/arm-none-eabi-g++
OBJCOPY = $(abspath $(COMPILERPATH))/arm-none-eabi-objcopy
SIZE = $(abspath $(COMPILERPATH))/arm-none-eabi-size

OBJDIR=obj

# automatically create lists of the sources and objects
# TODO: this does not handle Arduino libraries yet...
C_FILES := $(wildcard *.c)
CPP_FILES := $(wildcard *.cpp)
OBJS = $(patsubst %,$(OBJDIR)/%,$(notdir $(C_FILES:.c=.o))) $(patsubst %,$(OBJDIR)/%,$(notdir $(CPP_FILES:.cpp=.o)))
# below are the teensy library files
OBJS += $(OBJDIR)/mk20dx128.o
OBJS += $(OBJDIR)/yield.o
OBJS += $(OBJDIR)/pins_teensy.o
OBJS += $(OBJDIR)/analog.o
OBJS += $(OBJDIR)/usb_dev.o
OBJS += $(OBJDIR)/usb_mem.o
OBJS += $(OBJDIR)/usb_serial.o
OBJS += $(OBJDIR)/usb_desc.o
OBJS += $(OBJDIR)/Print.o
OBJS += $(OBJDIR)/WString.o
OBJS += $(OBJDIR)/nonstd.o
OBJS += $(OBJDIR)/usb_inst.o


# kudos to http://stackoverflow.com/questions/4102469/makefile-to-put-object-files-from-source-files-different-directories-into-a-sing
# the actual makefile rules (all .o files built by GNU make's default implicit rules)

.PHONY: all load clean

all: $(TARGET).hex

load: $(TARGET).hex
	$(abspath $(TOOLSPATH))/teensy_post_compile -file=$(basename $<) -path=$(shell pwd) -tools=$(abspath $(TOOLSPATH))
	-$(abspath $(TOOLSPATH))/teensy_reboot

$(TARGET).elf: $(OBJDIR) $(OBJS) $(LINKERFILE)
	$(CC) $(LDFLAGS) -o $@ $(OBJS)

%.hex: %.elf
	$(SIZE) $<
	$(OBJCOPY) -O ihex -R .eeprom $< $@

%(OBJDIR)/%.o: %.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -c -o $@ $<

$(OBJDIR)/%.o: %.cpp
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -c -o $@ $<

$(OBJDIR)/%.o: $(LIBTEENSY_PATH)/%.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -c -o $@ $<

$(OBJDIR)/%.o: $(LIBTEENSY_PATH)/%.cpp
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -c -o $@ $<

# compiler generated dependency info
-include $(OBJS:.o=.d)

$(OBJDIR)/$(notdir $(C_FILES:.c=.o)):
	@mkdir -p $(OBJDIR)

clean:
	rm -rf $(OBJDIR)
	rm -f $(TARGET).elf $(TARGET).hex
