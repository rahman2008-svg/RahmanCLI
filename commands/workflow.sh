#!/data/data/com.termux/files/usr/bin/bash

BASE="$HOME/RahmanCLI"

ACTION="$1"
NAME="$2"


if [ -z "$ACTION" ]; then

echo "Usage:"
echo ""
echo "rahman workflow create <name>"
echo "rahman workflow list"
echo "rahman workflow run <name>"

exit 1

fi


case "$ACTION" in


create)

if [ -z "$NAME" ]; then

echo "Workflow name required"

exit 1

fi


FILE="$BASE/workflows/$NAME.conf"


cat > "$FILE" <<EOF
# Rahman CLI Workflow

echo "Workflow started"

EOF


echo "✔ Workflow created: $NAME"


;;



list)

echo "================================"
echo " Rahman CLI Workflows"
echo "================================"


if [ -d "$BASE/workflows" ]; then


for wf in "$BASE/workflows"/*.conf; do

if [ -f "$wf" ]; then

echo "✔ $(basename "$wf" .conf)"

fi

done


else

echo "No workflows found."

fi


;;



run)


if [ -z "$NAME" ]; then

echo "Workflow name required"

exit 1

fi


FILE="$BASE/workflows/$NAME.conf"


if [ ! -f "$FILE" ]; then

echo "Workflow not found"

exit 1

fi


echo "================================"
echo "Running workflow: $NAME"
echo "================================"


bash "$FILE"


echo ""
echo "✔ Workflow completed"


;;



*)

echo "Unknown workflow command"

;;

esac
