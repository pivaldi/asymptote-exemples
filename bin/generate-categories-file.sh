#!/usr/bin/env bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

SRC_DIR=$(cd -- "$SCRIPT_DIR/.." &>/dev/null && pwd)
TMP_FILE="$SRC_DIR/tmp.categories"
CAT_FILE="$SRC_DIR/categories.txt"

[ -e "$TMP_FILE" ] && rm "$TMP_FILE"

find "$SRC_DIR" -type f -name 'category.txt' -print0 |
    while IFS= read -r -d '' FILE; do
        sed 's/^|//;s/|$//;s/|/-/' "$FILE" >>"$TMP_FILE"
        echo >>"$TMP_FILE"
    done

sort -n <"$TMP_FILE" | uniq >"$CAT_FILE"
sed -i '/^$/d;s/^/|/g;s/$/|/g;s/-/|/g' "$CAT_FILE"

rm "$TMP_FILE"
