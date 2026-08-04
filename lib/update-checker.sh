#!/data/data/com.termux/files/usr/bin/bash

BASE="$HOME/RahmanCLI"

check_update()
{

REMOTE=$(git -C "$BASE" rev-parse origin/main 2>/dev/null)

LOCAL=$(git -C "$BASE" rev-parse HEAD 2>/dev/null)


if [ "$REMOTE" != "$LOCAL" ]; then

echo "================================"
echo "Rahman CLI Update Available"
echo "================================"

echo "Your Version : $LOCAL"
echo "Latest       : $REMOTE"

echo ""
echo "Run:"
echo "rahman update"

echo "================================"

else

echo "Rahman CLI is up to date."

fi

}
