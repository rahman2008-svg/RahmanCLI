#!/data/data/com.termux/files/usr/bin/bash

TYPE="$1"

case "$TYPE" in

python)
    if [ -f "main.py" ]; then
        python main.py
    else
        echo "main.py not found."
    fi
    ;;

node)
    if [ -f "package.json" ]; then
        npm start
    else
        echo "package.json not found."
    fi
    ;;

android)
    if [ -f "./gradlew" ]; then
        chmod +x gradlew
        ./gradlew installDebug
    else
        echo "gradlew not found."
    fi
    ;;

*)
    echo "Usage:"
    echo "rahman run python"
    echo "rahman run node"
    echo "rahman run android"
    ;;
esac
