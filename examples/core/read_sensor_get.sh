#!/bin/bash
# Read AHT21 sensor data from Johnny552 via GET_REPORT request

DEVICE="/dev/hidraw1"

echo "Reading sensor data from Johnny552..."
echo "Press Ctrl+C to exit"
echo ""

while true; do
    # Send GET_REPORT request for Report ID 0x01
    # This polls the device for sensor data
    data=$(printf "\x01" | sudo tee $DEVICE > /dev/null && sudo dd if=$DEVICE bs=8 count=1 2>/dev/null | xxd -p)
    
    if [ -n "$data" ] && [ ${#data} -ge 10 ]; then
        # Extract bytes
        report_id=$(echo $data | cut -c1-2)
        temp_h=$(echo $data | cut -c3-4)
        temp_l=$(echo $data | cut -c5-6)
        hum_h=$(echo $data | cut -c7-8)
        hum_l=$(echo $data | cut -c9-10)
        
        # Convert hex to decimal
        temp_raw=$((16#$temp_h$temp_l))
        hum_raw=$((16#$hum_h$hum_l))
        
        # Handle signed temperature (if > 32767, it's negative)
        if [ $temp_raw -gt 32767 ]; then
            temp_raw=$((temp_raw - 65536))
        fi
        
        # Convert to human-readable (divide by 10)
        temp_c=$((temp_raw / 10))
        temp_dec=$((temp_raw % 10))
        if [ $temp_dec -lt 0 ]; then
            temp_dec=$((temp_dec * -1))
        fi
        
        hum_pct=$((hum_raw / 10))
        hum_dec=$((hum_raw % 10))
        
        echo "Temperature: ${temp_c}.${temp_dec}°C | Humidity: ${hum_pct}.${hum_dec}%"
    fi
    
    sleep 1
done
