#!/data/data/com.termux/files/usr/bin/bash

detect_project() {

    if [ -f "gradlew" ]; then
        echo "android"
        return
    fi

    if [ -f "package.json" ]; then
        echo "node"
        return
    fi

    if [ -f "main.py" ]; then
        echo "python"
        return
    fi

    if [ -f "requirements.txt" ]; then
        echo "python"
        return
    fi

    if [ -f "Cargo.toml" ]; then
        echo "rust"
        return
    fi

    if [ -f "go.mod" ]; then
        echo "go"
        return
    fi

    echo "unknown"
}
