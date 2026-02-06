#!/bin/sh

pkgs=(
  xournalpp
  1password-beta
  1password-cli
  alacritty
  omarchy-chromium
  kdenlive
  libreoffice-fresh
  obsidian
  obs-studio
  gnome-calculator
  spotify
  typora
  signal-desktop
  sushi
  evince
  opencode
  )

for package in ${pkgs[@]}
do
  omarchy-pkg-drop $package
done


set -e

ICON_DIR="$HOME/.local/share/applications/icons"
DESKTOP_DIR="$HOME/.local/share/applications/"

if [ "$#" -eq 0 ]; then
  # Find all web apps
  while IFS= read -r -d '' file; do
    if grep -q '^Exec=.*\(omarchy-launch-webapp\|omarchy-webapp-handler\).*' "$file"; then
      WEB_APPS+=("$(basename "${file%.desktop}")")
    fi
  done < <(find "$DESKTOP_DIR" -name '*.desktop' -print0)

  if ((${#WEB_APPS[@]})); then
    IFS=$'\n' SORTED_WEB_APPS=($(sort <<<"${WEB_APPS[*]}"))
    unset IFS
  else
    echo "No web apps to remove."
  fi
else
  # Use array to preserve spaces in app names
  APP_NAMES=("$@")
fi


for APP_NAME in "${WEB_APPS[@]}"; do
  rm -f "$DESKTOP_DIR/$APP_NAME.desktop"
  rm -f "$ICON_DIR/$APP_NAME.png"
  echo "Removed $APP_NAME"
done

