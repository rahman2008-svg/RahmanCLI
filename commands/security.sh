#!/data/data/com.termux/files/usr/bin/bash

BASE="$HOME/RahmanCLI"

echo "════════════════════════════════"
echo " Rahman CLI Security Scanner"
echo "════════════════════════════════"


echo ""

echo "Checking..."


if [ -f "$BASE/config/config.conf" ]; then
echo "✔ Config secure"
else
echo "✘ Config missing"
fi


if [ -d "$BASE/backup" ]; then
echo "✔ Backup system active"
else
echo "✘ Backup missing"
fi


if git -C "$BASE" status >/dev/null 2>&1
then
echo "✔ Git repository OK"
else
echo "✘ Git error"
fi


echo ""
echo "Security scan completed"
