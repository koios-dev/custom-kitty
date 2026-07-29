#!/usr/bin/env bash

IMG_DIR="$HOME/.config/fastfetch/images"
CONFIG_FILE="$HOME/.config/fastfetch/config.jsonc"
STATE_FILE="$HOME/.config/fastfetch/.current_index"

# Ensure image directory exists
mkdir -p "$IMG_DIR"

mapfile -t IMAGES < <(find "$IMG_DIR" -type f \( -name "*.gif" -o -name "*.apng" -o -name "*.png" \) | sort)
TOTAL_IMAGES=${#IMAGES[@]}

# If directory is empty, fix the placeholder so it doesn't crash, then run normally
if [ "$TOTAL_IMAGES" -eq 0 ]; then
    sed -i "s|\"source\": \".*\"|\"source\": \"\"|g" "$CONFIG_FILE"
    exec /usr/bin/fastfetch
fi

if [ -f "$STATE_FILE" ]; then
    CURRENT_INDEX=$(cat "$STATE_FILE")
    NEXT_INDEX=$(( (CURRENT_INDEX + 1) % TOTAL_IMAGES ))
else
    NEXT_INDEX=0
fi
echo "$NEXT_INDEX" > "$STATE_FILE"

NEXT_IMAGE_PATH="${IMAGES[$NEXT_INDEX]}"

sed -i "s|\"source\": \".*\"|\"source\": \"$NEXT_IMAGE_PATH\"|g" "$CONFIG_FILE"

exec /usr/bin/fastfetch
