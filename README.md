# Linux Directory, File Automation & System Health Monitoring

## Project Overview

This project demonstrates Linux Bash scripting and automation techniques for managing files and directories and monitoring basic system health.

The project was developed as part of a Linux/Bash automation exercise and covers:

* Directory and file creation
* Idempotent Bash automation
* System health monitoring
* Bash functions and reusable code
* Input validation
* Error handling and safety
* Exit codes
* Temporary file cleanup
* Project documentation and organization

## Project Structure

```text
directories-files-automation-with-bash/
├── scripts/
│   ├── directory_file_automation.sh
│   ├── system_health_monitor.sh
│   └── functions.sh
├── docs/
│   └── COMPLETION_CHECKLIST.md
├── screenshots/
└── README.md
```

## Scripts

### 1. Directory and File Automation

**Script:** `scripts/directory_file_automation.sh`

This script automatically creates the required directory and file structure.

It creates:

```text
config/
├── app.conf

data/
├── data.txt

logs/
└── archive/
    └── run_TIMESTAMP.log
```

The script is idempotent for the static configuration and data files. Running it multiple times does not duplicate their contents.

It also creates a timestamped log file for each execution.

### 2. System Health Monitor

**Script:** `scripts/system_health_monitor.sh`

The system health monitor checks:

* Disk usage
* Memory usage
* Top CPU-consuming process

The current warning threshold for disk and memory usage is **80%**.

The script returns:

* `0` when the system passes the health checks
* `1` when a health check fails

### 3. Reusable Functions

**Library:** `scripts/functions.sh`

Reusable functions were created for:

* Checking disk usage
* Checking memory usage
* Displaying the top CPU process

The main health-monitoring script sources this library instead of duplicating the same logic.

## Safety Features

The automation scripts use Bash safety options:

```bash
set -e
set -u
set -o pipefail
```

These help detect unexpected errors, unset variables, and pipeline failures.

The directory automation script also:

* Validates that user-provided paths are absolute
* Prevents `/` from being used as the base directory
* Uses `trap` to clean up temporary files

## Usage

From the project directory:

### Run directory and file automation

```bash
./scripts/directory_file_automation.sh
```

A custom absolute directory can also be supplied:

```bash
./scripts/directory_file_automation.sh /absolute/path
```

Relative paths are rejected for safety.

### Run the system health monitor

```bash
./scripts/system_health_monitor.sh
```

### Check the previous command's exit status

```bash
echo $?
```

A successful health check returns:

```text
0
```

## Technologies Used

* Linux
* Ubuntu
* Bash
* `mkdir`
* `touch`
* `echo`
* `date`
* `df`
* `free`
* `ps`
* `awk`
* `trap`

## Learning Outcomes

This project demonstrates practical understanding of:

* Linux directory structure
* Bash scripting
* Variables
* Command substitution
* Conditional statements
* Functions
* Function arguments
* Local variables
* Exit codes
* Pipes
* Input validation
* Error handling
* Temporary files
* Cleanup with `trap`
* Idempotent automation
* Basic system monitoring

## Assignment Completion

The project follows the five required areas:

1. Directory and file creation
2. System health monitoring
3. Refactoring using functions
4. Input validation and safety
5. Documentation and project organization
