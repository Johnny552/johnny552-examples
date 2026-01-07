#!/usr/bin/env python3
"""
Johnny552-Core LED Control Test
Send RGBW colors to the SK6812 LED via USB HID
"""

import hid
import time
import sys

# Johnny552 USB identifiers
VID = 0x16C0  # Van Ooijen Technische Informatica (shared VID)
PID = 0x5552  # Johnny552 custom PID

def find_johnny552():
    """Find and open the Johnny552 device"""
    try:
        device = hid.device()
        device.open(VID, PID)
        print(f"✓ Found Johnny552-Core (VID:{VID:04X} PID:{PID:04X})")
        
        # Get device info
        manufacturer = device.get_manufacturer_string()
        product = device.get_product_string()
        serial = device.get_serial_number_string()
        print(f"  Manufacturer: {manufacturer}")
        print(f"  Product: {product}")
        print(f"  Serial: {serial}")
        
        return device
    except Exception as e:
        print(f"✗ Error opening device: {e}")
        print(f"\nMake sure:")
        print(f"  1. Johnny552 is plugged in")
        print(f"  2. You have permissions (run: sudo chmod 666 /dev/hidraw*)")
        print(f"  3. Install hidapi: pip install hidapi")
        return None

def set_color(device, r, g, b, w=0):
    """Send RGBW color to the LED"""
    # HID report: [R, G, B, W, 0, 0, 0, 0]
    # Pad to 8 bytes (our report size)
    data = [r, g, b, w, 0, 0, 0, 0]
    
    try:
        device.write(data)
        return True
    except Exception as e:
        print(f"Error writing: {e}")
        return False

def main():
    print("=== Johnny552-Core LED Test ===\n")
    
    # Find device
    device = find_johnny552()
    if not device:
        sys.exit(1)
    
    print("\nTesting LED colors...\n")
    
    try:
        # Test sequence
        colors = [
            (255, 0, 0, 0, "Red"),
            (0, 255, 0, 0, "Green"),
            (0, 0, 255, 0, "Blue"),
            (0, 0, 0, 255, "White"),
            (255, 255, 0, 0, "Yellow"),
            (255, 0, 255, 0, "Magenta"),
            (0, 255, 255, 0, "Cyan"),
            (255, 128, 0, 0, "Orange"),
            (128, 0, 128, 0, "Purple"),
            (0, 0, 0, 0, "Off"),
        ]
        
        for r, g, b, w, name in colors:
            print(f"  {name:10s} (R:{r:3d} G:{g:3d} B:{b:3d} W:{w:3d})")
            set_color(device, r, g, b, w)
            time.sleep(0.5)
        
        print("\n✓ Test complete!")
        print("\nTry: python3 test_led.py --color 255 0 128 0  (custom RGBW)")
        
    except KeyboardInterrupt:
        print("\n\n✗ Interrupted by user")
    finally:
        # Turn off LED
        set_color(device, 0, 0, 0, 0)
        device.close()

if __name__ == "__main__":
    # Check for custom color command
    if len(sys.argv) == 5 and sys.argv[1] == "--color":
        device = find_johnny552()
        if device:
            r, g, b, w = map(int, sys.argv[2:6])
            print(f"\nSetting color: R={r} G={g} B={b} W={w}")
            set_color(device, r, g, b, w)
            device.close()
    else:
        main()
