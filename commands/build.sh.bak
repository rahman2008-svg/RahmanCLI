#!/data/data/com.termux/files/usr/bin/bash

# Rahman CLI - Build Command

source "$HOME/RahmanCLI/lib/detect.sh"
source "$HOME/RahmanCLI/lib/logger.sh"


PROJECT_TYPE=$(detect_project)


case "$PROJECT_TYPE" in


python)

    echo "================================"
    echo "Rahman CLI"
    echo "Detected: Python Project"
    echo "================================"

    if [ -f "main.py" ]; then
        
        python main.py
        
        log "build python $(pwd)"

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

        log "build node $(pwd)"

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

        log "build android $(pwd)"

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


    if command -v cargo >/dev/null 2>&1; then

        cargo build

        log "build rust $(pwd)"

    else

        echo "Cargo not installed."
        exit 1

    fi

    ;;



go)

    echo "================================"
    echo "Rahman CLI"
    echo "Detected: Go Project"
    echo "================================"


    if command -v go >/dev/null 2>&1; then

        go build

        log "build go $(pwd)"

    else

        echo "Go not installed."
        exit 1

    fi

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
