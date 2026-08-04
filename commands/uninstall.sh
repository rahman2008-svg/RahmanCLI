#!/data/data/com.termux/files/usr/bin/bash

TOOL="$1"

if [ -z "$TOOL" ]; then
    echo "Usage: rahman uninstall <package>"
    exit 1
fi

pkg uninstall -y "$TOOL"
