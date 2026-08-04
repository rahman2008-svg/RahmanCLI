#!/data/data/com.termux/files/usr/bin/bash

echo "================================"
echo "Rahman CLI Test"
echo "================================"

COMMANDS=(
help
version
about
doctor
info
config
detect
build
run
clean
update
)

PASS=0
FAIL=0

for CMD in "${COMMANDS[@]}"
do
    if [ -f "$HOME/RahmanCLI/commands/$CMD.sh" ] || [ -d "$HOME/RahmanCLI/commands/$CMD" ]; then
        echo "✔ $CMD"
        PASS=$((PASS+1))
    else
        echo "✖ $CMD"
        FAIL=$((FAIL+1))
    fi
done

echo "--------------------------------"
echo "Passed : $PASS"
echo "Failed : $FAIL"
echo "================================"
