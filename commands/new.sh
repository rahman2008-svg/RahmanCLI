#!/data/data/com.termux/files/usr/bin/bash

TYPE="$1"
NAME="$2"

if [ -z "$TYPE" ] || [ -z "$NAME" ]; then
    echo "Usage:"
    echo "  rahman new bash <name>"
    echo "  rahman new python <name>"
    echo "  rahman new node <name>"
    echo "  rahman new android <name>"
    exit 1
fi

case "$TYPE" in
    bash)
        mkdir -p "$NAME"

        cat > "$NAME/main.sh" << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash

echo "Hello from Bash!"
EOF

        chmod +x "$NAME/main.sh"
        echo "✔ Bash project created: $NAME"
        ;;

    python)
        mkdir -p "$NAME"

        cat > "$NAME/main.py" << 'EOF'
print("Hello from Python!")
EOF

        echo "✔ Python project created: $NAME"
        ;;

    node)
        mkdir -p "$NAME"

        cat > "$NAME/package.json" << 'EOF'
{
  "name": "my-node-app",
  "version": "1.0.0",
  "scripts": {
    "start": "node index.js"
  }
}
EOF

        cat > "$NAME/index.js" << 'EOF'
console.log("Hello from Node.js!");
EOF

        echo "✔ Node project created: $NAME"
        ;;

    android)
        mkdir -p "$NAME/app/src/main"

        cat > "$NAME/README.md" << 'EOF'
Android Project

Created by Rahman CLI
EOF

        echo "✔ Android project structure created: $NAME"
        ;;

    *)
        echo "Unknown project type: $TYPE"
        ;;
esac
