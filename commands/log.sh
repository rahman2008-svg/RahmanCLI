#!/data/data/com.termux/files/usr/bin/bash

LOG_FILE="$HOME/RahmanCLI/logs/rahman.log"

if [ ! -f "$LOG_FILE" ]; then
    echo "No logs found."
    exit 0
fi

cat "$LOG_FILE"
