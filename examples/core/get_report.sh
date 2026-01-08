#!/bin/bash
# Read AHT21 sensor data from Johnny552 via GET_REPORT request

DEVICE="/dev/hidraw1"

if [ ! -e "$DEVICE" ]; then
    echo "Error: Device $DEVICE not found"
    echo "Available devices:"
    ls -l /dev/hidraw*
    exit 1
fi

echo "Reading AHT21 sensor from $DEVICE..."

# Use python to send GET_REPORT via ioctl
python3 << 'EOF'
import sys
import struct
import fcntl

DEVICE = "/dev/hidraw1"
HIDIOCGFEATURE = 0xC0104807  # GET_REPORT (Feature)

try:
    with open(DEVICE, "rb+", buffering=0) as dev:
        # Buffer: first byte is report ID, rest is data
        buf = bytearray([0x01] + [0] * 7)
        
        # Send GET_REPORT request
        result = fcntl.ioctl(dev, HIDIOCGFEATURE, bytes(buf))
        
        # Parse result
        data = bytearray(result)
        print(f"Raw data: {' '.join(f'{b:02x}' for b in data)}")
        
        # Check for error marker
        if data[1] == 0xFF and data[2] == 0xFF:
            print("Error: Sensor read failed!")
            sys.exit(1)
        
        # Parse sensor data
        # Temperature: signed int16, °C × 10
        temp_raw = struct.unpack('>h', bytes(data[1:3]))[0]  # Big-endian signed 16-bit
        temperature = temp_raw / 10.0
        
        # Humidity: unsigned int16, % × 10
        hum_raw = struct.unpack('>H', bytes(data[3:5]))[0]  # Big-endian unsigned 16-bit
        humidity = hum_raw / 10.0
        
        print(f"Temperature: {temperature:.1f}°C")
        print(f"Humidity: {humidity:.1f}%")
            
except PermissionError:
    print("Error: Permission denied. Try running with sudo")
    sys.exit(1)
except FileNotFoundError:
    print(f"Error: Device {DEVICE} not found")
    sys.exit(1)
except Exception as e:
    print(f"Error: {e}")
    sys.exit(1)
EOF
