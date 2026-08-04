#!/data/data/com.termux/files/usr/bin/bash


ALIAS_FILE="$HOME/RahmanCLI/config/aliases.conf"


load_alias()
{

COMMAND="$1"


if [ -f "$ALIAS_FILE" ]
then

while IFS="=" read -r key value

do

if [ "$COMMAND" = "$key" ]
then

echo "$value"
return

fi

done < "$ALIAS_FILE"

fi


echo "$COMMAND"

}
