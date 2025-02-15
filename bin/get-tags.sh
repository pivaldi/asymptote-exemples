#!/usr/bin/env bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

SRC_DIR=$(cd -- "$SCRIPT_DIR/.." &>/dev/null && pwd)
TMP_FILE="$SRC_DIR/tmp.tag"
TAG_FILE="$SRC_DIR/all-tag.txt"

[ -e "$TMP_FILE" ] && rm "$TMP_FILE"

find "$SRC_DIR" -type f -name '*.tag' -print0 |
    while IFS= read -r -d '' FILE; do
        sed 's/^|//;s/|$//;s/|/-/' "$FILE" >> "$TMP_FILE"
        echo  >> "$TMP_FILE"
    done

sort -n < "$TMP_FILE" | uniq > "$TAG_FILE"
sed -i '/^$/d;s/^/|/g;s/$/|/g;s/-/|/g' "$TAG_FILE"

rm "$TMP_FILE"
