#!/data/data/com.termux/files/usr/bin/bash

TYPE="$1"

if [ -z "$TYPE" ]; then
    echo "Usage:"
    echo "rahman build android"
    echo "rahman build node"
    echo "rahman build python"
    exit 1
fi

case "$TYPE" in

android)

if [ -f "./gradlew" ]; then
chmod +x gradlew
./gradlew assembleDebug
else
echo "gradlew not found."
fi
;;

node)

if [ -f "package.json" ]; then
npm run build
else
echo "package.json not found."
fi
;;

python)

if [ -f "main.py" ]; then
python main.py
else
echo "main.py not found."
fi
;;

*)

echo "Unknown build target."

;;

esac
