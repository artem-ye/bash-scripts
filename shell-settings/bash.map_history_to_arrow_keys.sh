#!/bin/bash

OUT_FILE="~/.inputrc"

if [ -z "$1" ]; then
	echo "Empty string"
else
	OUT_FILE="$1"
fi

msg="File '$OUT_FILE' will be appended. Continue [N]: " 
read -p "$msg" ans

if [ "$ans" != 'Y' ] && [ "$ans" != 'y' ]; then
	exit 0
fi

cat << EOF >> "$OUT_FILE"
#arrow up
"\e[A":history-search-backward
# arrow down
"\e[B":history-search-forward
EOF
