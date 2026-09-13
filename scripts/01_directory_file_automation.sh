```bash
#!/bin/bash

# ==========================================
# Directory and File Automation
# ==========================================
# This script creates a directory structure,
# creates files with specific content, and
# generates a timestamped log file.
#
# The script is idempotent: it can be run
# multiple times without creating duplicate
# directory structures or repeatedly adding
# content to existing files.
# ==========================================

# Base directory
BASE_DIR="$HOME"

# Directories to create
CONFIG_DIR="$BASE_DIR/config"
DATA_DIR="$BASE_DIR/data"
LOG_DIR="$BASE_DIR/logs/archive"

# Create the directory structure
mkdir -p "$CONFIG_DIR"
mkdir -p "$DATA_DIR"
mkdir -p "$LOG_DIR"

# Configuration file
CONFIG_FILE="$CONFIG_DIR/app.conf"

if [ ! -s "$CONFIG_FILE" ]; then
    touch "$CONFIG_FILE"

    echo "# Application Configuration" > "$CONFIG_FILE"
    echo "environment=development" >> "$CONFIG_FILE"
    echo "application=bash-automation" >> "$CONFIG_FILE"
fi

# Data file
DATA_FILE="$DATA_DIR/data.txt"

if [ ! -s "$DATA_FILE" ]; then
    touch "$DATA_FILE"

    echo "Initial application data" > "$DATA_FILE"
fi

# Generate a timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Create a timestamped log file
LOG_FILE="$LOG_DIR/run_${TIMESTAMP}.log"

touch "$LOG_FILE"

echo "Script executed successfully." > "$LOG_FILE"
echo "Execution time: $(date)" >> "$LOG_FILE"
echo "Base directory: $BASE_DIR" >> "$LOG_FILE"

# Display completion message
echo "=========================================="
echo "Directory and file creation completed."
echo "Base directory: $BASE_DIR"
echo "Log file: $LOG_FILE"
echo "=========================================="
```
