#!/data/data/com.termux/files/usr/bin/bash


BASE="$HOME/RahmanCLI"

FILE="$1"


if [ -z "$FILE" ]; then

echo "Usage:"
echo "rahman restore <backup-file>"

exit 1

fi


if [ ! -f "$FILE" ]; then

echo "Backup file not found."

exit 1

fi



echo "================================"
echo " Rahman CLI Restore"
echo "================================"


tar -xzf "$FILE" -C "$BASE"


echo ""

echo "✔ Restore completed"

echo "================================"
