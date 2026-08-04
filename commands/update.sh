#!/data/data/com.termux/files/usr/bin/bash

BASE="$HOME/RahmanCLI"

echo "════════════════════════════════"
echo "     Rahman CLI Updater"
echo "════════════════════════════════"

echo ""

if [ -f "$BASE/config/config.conf" ]; then

CURRENT=$(grep version "$BASE/config/config.conf" | cut -d "=" -f2)

echo "Current Version:"
echo "$CURRENT"

else

echo "Version unknown"

fi


echo ""
echo "Checking updates..."

sleep 2


REMOTE=$(git -C "$BASE" rev-parse origin/main 2>/dev/null)
LOCAL=$(git -C "$BASE" rev-parse HEAD 2>/dev/null)


if [ "$REMOTE" = "$LOCAL" ]; then

echo ""
echo "✔ Rahman CLI is already latest version"

else

echo ""
echo "New update available"

echo ""
echo "Changes:"
echo "✔ New features"
echo "✔ Bug fixes"
echo "✔ Performance improvements"


echo ""

read -p "Update now? (y/n): " ANSWER


if [ "$ANSWER" = "y" ]; then


cd "$BASE"

git pull


echo ""
echo "✔ Update completed"


else

echo "Update cancelled"

fi


fi
