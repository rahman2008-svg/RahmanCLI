#!/data/data/com.termux/files/usr/bin/bash

# Rahman CLI - Build Command

source "$HOME/RahmanCLI/lib/detect.sh"

PROJECT_TYPE=$(detect_project)

case "$PROJECT_TYPE" in

python)
    echo "================================"
    echo "Rahman CLI"
    echo "Detected: Python Project"
    echo "================================"

    if [ -f "main.py" ]; then
        python main.py
    else
        echo "Error: main.py not found."
        exit 1
    fi
    ;;

node)
    echo "================================"
    echo "Rahman CLI"
    echo "Detected: Node.js Project"
    echo "================================"

    if [ -f "package.json" ]; then
        npm run build
    else
        echo "Error: package.json not found."
        exit 1
    fi
    ;;

android)
    echo "================================"
    echo "Rahman CLI"
    echo "Detected: Android Project"
    echo "================================"

    if [ -f "./gradlew" ]; then
        chmod +x gradlew
        ./gradlew assembleDebug
    else
        echo "Error: gradlew not found."
        exit 1
    fi
    ;;

rust)
    echo "================================"
    echo "Rahman CLI"
    echo "Detected: Rust Project"
    echo "================================"

    cargo build
    ;;

go)
    echo "================================"
    echo "Rahman CLI"
    echo "Detected: Go Project"
    echo "================================"

    go build
    ;;

*)
    echo "================================"
    echo "Rahman CLI"
    echo "No supported project detected."
    echo ""
    echo "Supported Projects:"
    echo "  • Python"
    echo "  • Node.js"
    echo "  • Android"
    echo "  • Rust"
    echo "  • Go"
    echo "================================"
    exit 1
    ;;
esac
