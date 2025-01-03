#!/bin/bash

if [[ $# -lt 3 ]]; then
	echo "$0: input_file_name output_file_name size"
	exit 255
fi

INPUT_FILE=$1
OUTPUT_FILE=$2
SIZE=$3
COLOR="#1E90FF"

TEMP="$(mktemp --directory --tmpdir tumbler-stl-XXXXXXX)"
cp "$INPUT_FILE" "$TEMP/source.stl"

echo "color(\"${COLOR}\",1.0) import(\"source.stl\", convexity=10);" > "$TEMP/thumbnail.scad"
openscad --imgsize "500,500" -o "$TEMP/thumbnail.png" "$TEMP/thumbnail.scad" 2>/dev/null

magick "$TEMP/thumbnail.png" -thumbnail "$SIZE" -level 10%,80% -fuzz 30% -transparent white "$OUTPUT_FILE" 1>/dev/null 2>&1

rm -rf $TEMP
