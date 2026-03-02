#!/bin/sh

SOURCE_LINE="source = ~/omarchy-setup/hyprland.conf"
HYPRLAND_CONFIG="$HOME/.config/hypr/hyprland.conf"

echo "$SOURCE_LINE"

if ! grep -Fxq "$SOURCE_LINE" "$HYPRLAND_CONFIG"; then
  echo "Adding hyprland mods"
  echo "" >> "$HYPRLAND_CONFIG"
  echo "$SOURCE_LINE" >> "$HYPRLAND_CONFIG"
else
  echo "Added"
fi
