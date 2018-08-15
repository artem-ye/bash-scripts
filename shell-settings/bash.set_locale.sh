#!/bin/bash

OUT_FILE="~/.profile"

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
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
EOF
