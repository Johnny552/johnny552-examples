TARGET = core
BUILD_DIR = build

# Toolchain
CC = sdcc
OBJCOPY = objcopy
PACK_HEX = packihx
WCHISP = wchisptool -g -f

# Configuration
FREQ_SYS = 24000000
XRAM_SIZE = 0x0100
XRAM_LOC = 0x0100
CODE_SIZE = 0x3800

# Source files
C_FILES = \
	main.c \
	lib/sk6812/sk6812.c \
	lib/usb_hid/debug.c \
	lib/aht21/aht21.c \
	lib/i2c_local.c

# Include paths
INC_DIRS = \
	-Ilib/usb_hid \
	-Ilib/sk6812 \
	-Ilib/aht21 \
	-Ilib \
	-I../../include

# Compiler flags
CFLAGS = -V -mmcs51 --model-small \
	--xram-size $(XRAM_SIZE) --xram-loc $(XRAM_LOC) \
	--code-size $(CODE_SIZE) \
	$(INC_DIRS) -DFREQ_SYS=$(FREQ_SYS)

LFLAGS = $(CFLAGS)

# Object files in build directory
OBJS = $(addprefix $(BUILD_DIR)/,$(notdir $(C_FILES:.c=.rel)))

.PHONY: all clean flash

all: $(BUILD_DIR)/$(TARGET).bin $(BUILD_DIR)/$(TARGET).hex

$(BUILD_DIR)/%.rel: %.c
	@mkdir -p $(BUILD_DIR)
	$(CC) -c $(CFLAGS) $< -o $@

$(BUILD_DIR)/%.rel: lib/sk6812/%.c
	@mkdir -p $(BUILD_DIR)
	$(CC) -c $(CFLAGS) $< -o $@

$(BUILD_DIR)/%.rel: lib/usb_hid/%.c
	@mkdir -p $(BUILD_DIR)
	$(CC) -c $(CFLAGS) $< -o $@

$(BUILD_DIR)/%.rel: lib/aht21/%.c
	@mkdir -p $(BUILD_DIR)
	$(CC) -c $(CFLAGS) $< -o $@

$(BUILD_DIR)/%.rel: lib/%.c
	@mkdir -p $(BUILD_DIR)
	$(CC) -c $(CFLAGS) $< -o $@

$(BUILD_DIR)/%.rel: ../../include/%.c
	@mkdir -p $(BUILD_DIR)
	$(CC) -c $(CFLAGS) $< -o $@

$(BUILD_DIR)/$(TARGET).ihx: $(OBJS)
	@mkdir -p $(BUILD_DIR)
	cd $(BUILD_DIR) && $(CC) $(notdir $(OBJS)) $(LFLAGS) -o $(TARGET).ihx

$(BUILD_DIR)/$(TARGET).hex: $(BUILD_DIR)/$(TARGET).ihx
	$(PACK_HEX) $< > $@

$(BUILD_DIR)/$(TARGET).bin: $(BUILD_DIR)/$(TARGET).ihx
	$(OBJCOPY) -I ihex -O binary $< $@

flash: $(BUILD_DIR)/$(TARGET).bin
	$(WCHISP) $<

clean:
	rm -rf $(BUILD_DIR)
