#!/data/data/com.termux/files/usr/bin/bash

NAME=$(basename "$(pwd)")

if [ -f rahman.json ]; then
    echo "Project already initialized."
    exit 1
fi

cat > rahman.json <<EOF
{
  "name":"$NAME",
  "type":"unknown",
  "version":"1.0.0",
  "author":"Abdur Rahman",
  "build":"",
  "run":"",
  "description":""
}
EOF

echo "================================"
echo "Rahman CLI"
echo "================================"
echo "✔ Project initialized"
echo "File: rahman.json"
echo "================================"
