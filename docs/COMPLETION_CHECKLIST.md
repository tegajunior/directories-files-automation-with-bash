# Project Completion Checklist

## Task 1 — Directory and File Creation

* [x] Created nested directories using `mkdir -p`
* [x] Created files using `touch`
* [x] Added file contents using `echo`
* [x] Added conditional checks to prevent duplicate content
* [x] Implemented timestamped log files
* [x] Verified the script runs successfully
* [x] Verified idempotency by running the script multiple times

## Task 2 — System Health Monitor

* [x] Captured disk usage using `df`
* [x] Captured memory usage using `free`
* [x] Captured top CPU process using `ps`
* [x] Stored command results in variables
* [x] Implemented threshold checks using `if`
* [x] Implemented disk usage threshold
* [x] Implemented memory usage threshold
* [x] Implemented success exit code `0`
* [x] Implemented failure exit code `1`
* [x] Verified successful execution

## Task 3 — Refactoring Using Functions

* [x] Created reusable functions
* [x] Created disk-check function
* [x] Created memory-check function
* [x] Created top-process function
* [x] Used function arguments with `$1`
* [x] Used `local` variables
* [x] Used `return` status codes
* [x] Created external function library
* [x] Sourced the function library from the main script
* [x] Verified the refactored script works

## Task 4 — Input Validation and Safety

* [x] Added `set -e`
* [x] Added `set -u`
* [x] Added `set -o pipefail`
* [x] Added input validation
* [x] Validated absolute paths
* [x] Prevented `/` from being used as the base directory
* [x] Added temporary directory handling
* [x] Added `trap` cleanup
* [x] Verified temporary files are cleaned up
* [x] Tested invalid relative path input
* [x] Tested root directory protection

## Task 5 — Documentation and Organization

* [x] Organized scripts into the `scripts/` directory
* [x] Created `docs/` directory
* [x] Created `screenshots/` directory
* [x] Created project README
* [x] Created completion checklist
- [x] Add final screenshots
- [x] Perform final project verification
- [X ] Review repository before submission

## Final Project Verification

* [X] All scripts are executable
* [X] Directory automation script runs successfully
* [X] System health monitor runs successfully
* [X] Exit codes have been verified
* [X] No unnecessary files are committed
* [X] README accurately describes the project
* [X] Screenshots demonstrate successful execution
* [X] Git repository is ready for submission
