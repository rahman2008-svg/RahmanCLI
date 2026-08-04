#!/data/data/com.termux/files/usr/bin/bash

BASE="$HOME/RahmanCLI"
TEMPLATES="$BASE/templates"

echo "================================"
echo "Rahman CLI Templates"
echo "================================"

COUNT=0

for dir in "$TEMPLATES"/*; do
    if [ -d "$dir" ]; then
        echo "✔ $(basename "$dir")"
        COUNT=$((COUNT+1))
    fi
done

echo "--------------------------------"
echo "Total Templates: $COUNT"
echo "================================"
