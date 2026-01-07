#!/bin/bash
# Set Johnny552 LED color using raw HID writes
# Usage: ./led.sh <R> <G> <B>

DEVICE="/dev/hidraw1"

if [ $# -ne 3 ]; then
    echo "Usage: $0 <R> <G> <B>"
    echo "Example: $0 255 0 0  (red)"
    exit 1
fi

R=$1
G=$2
B=$3

# Send: [0x00, 0x00, R, G, B, 0, 0, 0] - need TWO leading zeros
printf "\\x00\\x00\\x$(printf '%02x' $R)\\x$(printf '%02x' $G)\\x$(printf '%02x' $B)\\x00\\x00\\x00" | sudo tee $DEVICE > /dev/null

echo "✓ Set LED to R:$R G:$G B:$B"
