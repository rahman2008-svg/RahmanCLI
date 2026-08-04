#!/data/data/com.termux/files/usr/bin/bash

echo "Rahman Docker Plugin"

docker --version 2>/dev/null

if [ $? -ne 0 ]; then
    echo "Docker is not installed."
fi
