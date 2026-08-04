#!/data/data/com.termux/files/usr/bin/bash

# =====================================
# Rahman CLI Logger Library
# =====================================

LOG_DIR="$HOME/RahmanCLI/logs"
LOG_FILE="$LOG_DIR/rahman.log"

# Create log directory if it doesn't exist
mkdir -p "$LOG_DIR"

# Write a log entry
log() {
    local MESSAGE="$1"

    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $MESSAGE" >> "$LOG_FILE"
}

# Show all logs
show_logs() {
    if [ -f "$LOG_FILE" ]; then
        cat "$LOG_FILE"
    else
        echo "No logs found."
    fi
}

# Clear logs
clear_logs() {
    > "$LOG_FILE"
    echo "Logs cleared."
}
