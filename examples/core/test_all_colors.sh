#!/bin/bash
# Test all basic colors on Johnny552 RGB LED

SCRIPT_DIR="$(dirname "$0")"
LED_SCRIPT="$SCRIPT_DIR/led.sh"

echo "Testing all colors..."

echo "Red..."
$LED_SCRIPT 255 0 0
sleep 1

echo "Green..."
$LED_SCRIPT 0 255 0
sleep 1

echo "Blue..."
$LED_SCRIPT 0 0 255
sleep 1

echo "Yellow (R+G)..."
$LED_SCRIPT 255 255 0
sleep 1

echo "Cyan (G+B)..."
$LED_SCRIPT 0 255 255
sleep 1

echo "Magenta (R+B)..."
$LED_SCRIPT 255 0 255
sleep 1

echo "White (R+G+B)..."
$LED_SCRIPT 255 255 255
sleep 1

echo "Off..."
$LED_SCRIPT 0 0 0

echo "Test complete!"
