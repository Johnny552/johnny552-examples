TARGET = core

# Use ch554_sdcc working library
C_FILES = \
	main.c \
	lib/sk6812/sk6812.c \
	lib/usb_hid/debug.c

INC_DIRS = \
	-Ilib/usb_hid \
	-Ilib/sk6812

# Match working MIDI example configuration
XRAM_SIZE = 0x0100
XRAM_LOC = 0x0100


pre-flash:
	

include ../Makefile.include
