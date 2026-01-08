#!/usr/bin/env python3
"""
Read AHT21 sensor data from Johnny552 via HID INPUT reports.
"""

import hid
import struct
import time
import sys

# USB VID:PID for Johnny552
VID = 0x16C0
PID = 0x5552

def parse_sensor_data(data):
    """Parse the 8-byte HID INPUT report containing sensor data."""
    if len(data) < 8:
        return None, None
    
    # Report format: [ReportID, Temp_H, Temp_L, Hum_H, Hum_L, 0, 0, 0]
    report_id = data[0]
    
    if report_id != 0x01:
        return None, None
    
    # Extract temperature (signed 16-bit, °C × 10)
    temp_raw = (data[1] << 8) | data[2]
    # Convert to signed
    if temp_raw & 0x8000:
        temp_raw -= 0x10000
    temperature = temp_raw / 10.0
    
    # Extract humidity (unsigned 16-bit, % × 10)
    hum_raw = (data[3] << 8) | data[4]
    humidity = hum_raw / 10.0
    
    return temperature, humidity

def main():
    """Main function to read sensor data continuously."""
    print(f"Looking for Johnny552 device (VID: {VID:04X}, PID: {PID:04X})...")
    
    try:
        # Open the HID device
        device = hid.device()
        device.open(VID, PID)
        
        print(f"Connected to: {device.get_manufacturer_string()} - {device.get_product_string()}")
        print("Reading sensor data... (Press Ctrl+C to exit)\n")
        
        # Set non-blocking mode with timeout
        device.set_nonblocking(False)
        
        while True:
            # Read with timeout (1000ms)
            data = device.read(8, timeout_ms=1000)
            
            if data:
                # Parse the sensor data
                temperature, humidity = parse_sensor_data(data)
                
                if temperature is not None and humidity is not None:
                    print(f"Temperature: {temperature:5.1f}°C | Humidity: {humidity:4.1f}%")
                    sys.stdout.flush()
            
            # Small delay
            time.sleep(0.1)
    
    except IOError as e:
        print(f"Error: Could not open device. {e}")
        print("Make sure the device is connected and you have permissions.")
        print("You may need to run: sudo python3 read_sensor.py")
        return 1
    except KeyboardInterrupt:
        print("\nExiting...")
        return 0
    finally:
        try:
            device.close()
        except:
            pass
    
    return 0

if __name__ == "__main__":
    sys.exit(main())
