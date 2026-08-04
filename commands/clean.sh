#!/data/data/com.termux/files/usr/bin/bash

echo "================================"
echo "Rahman CLI - Clean"
echo "================================"

FOUND=0

if [ -d "__pycache__" ]; then
    rm -rf __pycache__
    echo "✔ Removed __pycache__"
    FOUND=1
fi

if [ -d "build" ]; then
    rm -rf build
    echo "✔ Removed build/"
    FOUND=1
fi

if [ -d "dist" ]; then
    rm -rf dist
    echo "✔ Removed dist/"
    FOUND=1
fi

if [ -d ".gradle" ]; then
    rm -rf .gradle
    echo "✔ Removed .gradle/"
    FOUND=1
fi

if [ -d "node_modules/.cache" ]; then
    rm -rf node_modules/.cache
    echo "✔ Removed node_modules/.cache/"
    FOUND=1
fi

if [ "$FOUND" -eq 0 ]; then
    echo "Nothing to clean."
fi

echo "================================"
