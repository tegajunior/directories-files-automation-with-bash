```bash
#!/bin/bash

# Check disk usage
check_disk() {
    local threshold="$1"
    local usage

    usage=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

    echo "Disk usage: ${usage}%"

    if [ "$usage" -ge "$threshold" ]; then
        echo "WARNING: Disk usage is above ${threshold}%."
        return 1
    else
        echo "OK: Disk usage is below ${threshold}%."
        return 0
    fi
}


# Check memory usage
check_memory() {
    local threshold="$1"
    local usage

    usage=$(free | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')

    echo "Memory usage: ${usage}%"

    if [ "$usage" -ge "$threshold" ]; then
        echo "WARNING: Memory usage is above ${threshold}%."
        return 1
    else
        echo "OK: Memory usage is below ${threshold}%."
        return 0
    fi
}


# Display the process using the most CPU
show_top_process() {
    local process

    process=$(ps -eo pid,comm,%cpu --sort=-%cpu | awk 'NR==2')

    echo "Top CPU process:"
    echo "$process"
}
```
