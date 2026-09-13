```bash
#!/bin/bash
set -e
set -u
set -o pipefail


cleanup() {
    echo
    echo "Health monitor stopped."
}

trap cleanup EXIT

# Load the external function library
source ./functions.sh

# Thresholds
DISK_THRESHOLD=80
MEMORY_THRESHOLD=80

echo "=============================="
echo "     SYSTEM HEALTH MONITOR"
echo "=============================="

# Run disk check
check_disk "$DISK_THRESHOLD"
DISK_STATUS=$?

echo

# Run memory check
check_memory "$MEMORY_THRESHOLD"
MEMORY_STATUS=$?

echo

# Display top CPU process
show_top_process

echo

# Determine overall health
if [ "$DISK_STATUS" -eq 0 ] && [ "$MEMORY_STATUS" -eq 0 ]; then
    echo "System health check: SUCCESS"
    exit 0
else
    echo "System health check: FAILURE"
    exit 1
fi
```
