#!/bin/bash

set -e
set -u
set -o pipefail

# ==========================================
# System Health Monitor
# ==========================================
# Uses reusable functions from functions.sh
# to check disk, memory, and CPU usage.
# ==========================================

# Load the reusable functions
source "$(dirname "$0")/functions.sh"

# Thresholds
DISK_THRESHOLD=80
MEMORY_THRESHOLD=80

echo "=========================================="
echo "        SYSTEM HEALTH MONITOR"
echo "=========================================="

# Run disk and memory checks
if check_disk "$DISK_THRESHOLD"; then
    DISK_STATUS=0
else
    DISK_STATUS=1
fi

echo

if check_memory "$MEMORY_THRESHOLD"; then
    MEMORY_STATUS=0
else
    MEMORY_STATUS=1
fi

echo

# Display top CPU process
show_top_process

echo

# Report final health status
if [ "$DISK_STATUS" -eq 0 ] && [ "$MEMORY_STATUS" -eq 0 ]; then
    echo "System health check: SUCCESS"
    exit 0
else
    echo "System health check: FAILURE"
    exit 1
fi