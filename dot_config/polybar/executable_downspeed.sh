#!/bin/bash
# Get download speed in bytes per second
DOWNLOAD_SPEED=$(cat /proc/net/dev | grep "wlp2s0:" | awk '{print $2}')

# Convert bytes per second to megabits per second
DOWNLOAD_SPEED=$(echo "scale=2; $DOWNLOAD_SPEED/1000000" | bc)

echo "${DOWNLOAD_SPEED} Mb/s"

