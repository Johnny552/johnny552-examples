#!/usr/bin/env python3
"""Simple command-line tool to set Johnny552 LED color"""
import hid
import sys

VID, PID = 0x16C0, 0x5552

try:
    device = hid.device()
    device.open(VID, PID)
    
    if len(sys.argv) == 5:
        r, g, b, w = map(int, sys.argv[1:5])
    else:
        print("Usage: ./led_set.py <R> <G> <B> <W>")
        print("Example: ./led_set.py 255 0 0 0  (red)")
        sys.exit(1)
    
    device.write([r, g, b, w, 0, 0, 0, 0])
    print(f"✓ Set LED to R:{r} G:{g} B:{b} W:{w}")
    device.close()
    
except Exception as e:
    print(f"✗ Error: {e}")
    print("Install: pip install hidapi")
    print("Permissions: sudo chmod 666 /dev/hidraw*")
    sys.exit(1)
