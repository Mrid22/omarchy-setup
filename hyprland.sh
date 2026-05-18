#!/bin/sh

SOURCE_LINE="source = ~/omarchy-setup/hyprland.conf"
HYPRLAND_CONFIG="$HOME/.config/hypr/hyprland.conf"

if ! grep -Fxq "$SOURCE_LINE" "$HYPRLAND_CONFIG" ; then
	echo "" >> "$HYPRLAND_CONFIG"
	echo "$SOURCE_LINE" >> "$HYPRLAND_CONFIG"
fi

