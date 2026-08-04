#!/data/data/com.termux/files/usr/bin/bash

PLUGIN_DIR="$HOME/RahmanCLI/plugins"

echo "================================"
echo "Installed Plugins"
echo "================================"

FOUND=0

for file in "$PLUGIN_DIR"/*.sh
do
    if [ -f "$file" ]; then
        basename "$file" .sh
        FOUND=1
    fi
done

if [ "$FOUND" -eq 0 ]; then
    echo "No plugins installed."
fi

echo "================================"
