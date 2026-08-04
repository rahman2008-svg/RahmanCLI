#!/data/data/com.termux/files/usr/bin/bash

TOOL="$1"

if [ -z "$TOOL" ]; then
    echo "Usage:"
    echo "  rahman install git"
    echo "  rahman install python"
    echo "  rahman install node"
    echo "  rahman install java"
    exit 1
fi

case "$TOOL" in
    git)
        pkg install -y git
        ;;
    python)
        pkg install -y python
        ;;
    node)
        pkg install -y nodejs
        ;;
    java)
        pkg install -y openjdk-21
        ;;
    wget)
        pkg install -y wget
        ;;
    curl)
        pkg install -y curl
        ;;
    *)
        echo "Unknown package: $TOOL"
        ;;
esac
