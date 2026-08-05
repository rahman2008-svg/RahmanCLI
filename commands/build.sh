#!/data/data/com.termux/files/usr/bin/bash

# ==========================================
# Rahman CLI v4.1 - Build Command
# Manifest Engine + Legacy Fallback
# ==========================================

source "$HOME/RahmanCLI/lib/detect.sh"
source "$HOME/RahmanCLI/lib/logger.sh"

echo "================================"
echo "Rahman CLI Build"
echo "================================"

# ==========================================
# Manifest Engine
# ==========================================

if [ -f "rahman.json" ]; then

    echo "Manifest detected."
    echo ""

    PROJECT_NAME=$(grep '"name"' rahman.json | cut -d':' -f2- | tr -d '",' | xargs)
    PROJECT_TYPE=$(grep '"type"' rahman.json | cut -d':' -f2- | tr -d '",' | xargs)
    BUILD_COMMAND=$(grep '"build"' rahman.json | cut -d':' -f2- | tr -d '",' | xargs)

    echo "Project : $PROJECT_NAME"
    echo "Type    : $PROJECT_TYPE"
    echo "Build   : $BUILD_COMMAND"
    echo ""

    if [ -z "$BUILD_COMMAND" ]; then
        echo "No build command found in rahman.json"
        exit 1
    fi

    echo "Running build..."
    echo "--------------------------------"

    eval "$BUILD_COMMAND"
    STATUS=$?

    echo "--------------------------------"

    if [ $STATUS -eq 0 ]; then
        echo "✔ Build completed successfully"
        log "build $PROJECT_TYPE $(pwd)"
    else
        echo "✘ Build failed"
        exit $STATUS
    fi

    exit 0
fi

# ==========================================
# Legacy Detect Engine
# ==========================================

PROJECT_TYPE=$(detect_project)

case "$PROJECT_TYPE" in
