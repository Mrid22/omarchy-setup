SOURCE_LINE="source = ~/setup/hyprland.conf"
HYPRLAND_CONFIG="$HOME/.config/hypr/hyprland.conf"
if grep -Fxq "$SOURCE_LINE" "$HYPRLAND_CONFIG"; then
  echo "Hyprland already configured"
else
  echo "sourcing costumizations"
  echo "" >> "$HYPRLAND_CONFIG"
  echo "$SOURCE_LINE" >> "$HYPRLAND_CONFIG"
fi
