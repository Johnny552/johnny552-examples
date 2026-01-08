/*
 * Read AHT21 sensor data from Johnny552 via HID
 * Compile: gcc -o read_sensor read_sensor.c -lhidapi-libusb
 * Run: sudo ./read_sensor
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <unistd.h>
#include <signal.h>
#include <hidapi/hidapi.h>

#define VID 0x16C0
#define PID 0x5552

static int running = 1;

void signal_handler(int sig) {
    running = 0;
}

int main() {
    hid_device *handle;
    unsigned char buf[8];
    int res;
    
    // Initialize signal handler
    signal(SIGINT, signal_handler);
    
    // Initialize HIDAPI
    if (hid_init() < 0) {
        fprintf(stderr, "Error: Failed to initialize HIDAPI\n");
        return 1;
    }
    
    // Open the device
    handle = hid_open(VID, PID, NULL);
    if (!handle) {
        fprintf(stderr, "Error: Unable to open device %04X:%04X\n", VID, PID);
        fprintf(stderr, "Try running with sudo\n");
        hid_exit();
        return 1;
    }
    
    printf("Connected to Johnny552\n");
    printf("Reading sensor data... (Press Ctrl+C to exit)\n\n");
    
    // Set non-blocking mode
    hid_set_nonblocking(handle, 0);
    
    while (running) {
        // Read with 1 second timeout
        res = hid_read_timeout(handle, buf, sizeof(buf), 1000);
        
        if (res < 0) {
            fprintf(stderr, "Error reading: %ls\n", hid_error(handle));
            break;
        }
        
        if (res > 0) {
            // Parse sensor data
            if (buf[0] == 0x01 && res >= 5) {
                // Extract temperature (signed 16-bit)
                int16_t temp_raw = (buf[1] << 8) | buf[2];
                float temperature = temp_raw / 10.0f;
                
                // Extract humidity (unsigned 16-bit)
                uint16_t hum_raw = (buf[3] << 8) | buf[4];
                float humidity = hum_raw / 10.0f;
                
                printf("Temperature: %5.1f°C | Humidity: %4.1f%%\n", temperature, humidity);
                fflush(stdout);
            }
        }
        
        usleep(100000);  // 100ms delay
    }
    
    printf("\nExiting...\n");
    hid_close(handle);
    hid_exit();
    
    return 0;
}
