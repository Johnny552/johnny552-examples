#!/bin/bash
# Read AHT21 temperature and humidity from Johnny552 HID device

DEVICE="/dev/hidraw1"

if [ ! -e "$DEVICE" ]; then
    echo "Error: $DEVICE not found" >&2
    exit 1
fi

echo "Reading AHT21 sensor data from $DEVICE..."
echo "Press Ctrl+C to stop"
echo ""

while true; do
    # Read 8 bytes from HID INPUT report
    # Format: [ReportID, Temp_H, Temp_L, Hum_H, Hum_L, 0, 0, 0]
    DATA=$(sudo timeout 2 dd if=$DEVICE bs=8 count=1 2>/dev/null | od -An -tu1)
    
    if [ $? -eq 0 ] && [ -n "$DATA" ]; then
        # Convert to array
        read -a BYTES <<< "$DATA"
        
        # Check if we have enough data and correct report ID
        if [ ${#BYTES[@]} -ge 5 ] && [ ${BYTES[0]} -eq 1 ]; then
            # Temperature: signed 16-bit (multiply by 0.1 to get °C)
            TEMP_H=${BYTES[1]}
            TEMP_L=${BYTES[2]}
            TEMP_RAW=$((TEMP_H * 256 + TEMP_L))
            
            # Handle signed value (two's complement)
            if [ $TEMP_RAW -ge 32768 ]; then
                TEMP_RAW=$((TEMP_RAW - 65536))
            fi
            
            # Humidity: unsigned 16-bit (multiply by 0.1 to get %)
            HUM_H=${BYTES[3]}
            HUM_L=${BYTES[4]}
            HUM_RAW=$((HUM_H * 256 + HUM_L))
            
            # Calculate actual values (divide by 10)
            TEMP_INT=$((TEMP_RAW / 10))
            TEMP_DEC=$((TEMP_RAW % 10))
            if [ $TEMP_DEC -lt 0 ]; then
                TEMP_DEC=$((TEMP_DEC * -1))
            fi
            
            HUM_INT=$((HUM_RAW / 10))
            HUM_DEC=$((HUM_RAW % 10))
            
            # Display
            echo "$(date '+%H:%M:%S') - Temperature: ${TEMP_INT}.${TEMP_DEC}°C | Humidity: ${HUM_INT}.${HUM_DEC}%"
        fi
    fi
    
    sleep 1
done
