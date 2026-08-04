#!/data/data/com.termux/files/usr/bin/bash

if [ -z "$1" ]; then
    echo "Usage: rahman pkg install <package>"
    exit 1
fi

pkg install -y "$1"
