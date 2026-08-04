#!/data/data/com.termux/files/usr/bin/bash

if [ -z "$1" ]; then
    echo "Usage: rahman git clone <repository-url>"
    exit 1
fi

git clone "$1"
