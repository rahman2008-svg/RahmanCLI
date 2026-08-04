#!/data/data/com.termux/files/usr/bin/bash

BASE="$HOME/RahmanCLI"

echo "Updating Rahman CLI..."

cd "$BASE" || exit 1

git pull origin main

cp rahman ~/bin/rahman
chmod +x ~/bin/rahman

echo ""
echo "✔ Rahman CLI updated successfully."
