#!/data/data/com.termux/files/usr/bin/bash


BASE="$HOME/RahmanCLI"

BACKUP_DIR="$BASE/backup"

DATE=$(date +"%Y-%m-%d-%H-%M-%S")


mkdir -p "$BACKUP_DIR"


FILE="$BACKUP_DIR/RahmanCLI-$DATE.tar.gz"


echo "================================"
echo " Rahman CLI Backup"
echo "================================"


tar \
--exclude="./.git" \
--exclude="./backup" \
-czf "$FILE" \
-C "$BASE" .


echo ""

echo "✔ Backup created"

echo ""

echo "File:"
echo "$FILE"

echo "================================"
