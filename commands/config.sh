#!/data/data/com.termux/files/usr/bin/bash

CONFIG="$HOME/RahmanCLI/config/config.conf"

if [ ! -f "$CONFIG" ]; then
    echo "Config file not found."
    exit 1
fi

source "$CONFIG"

echo "========== Rahman CLI Configuration =========="
echo "CLI Name : $CLI_NAME"
echo "Version  : $VERSION"
echo "Author   : $AUTHOR"
echo "Theme    : $THEME"
echo "=============================================="
