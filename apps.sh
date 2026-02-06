#!/bin/sh

AURS=(
  zen-browser-bin
  )

PKGS=(
  godot
  blender
  yazi
  )

for PKG in ${PKGS[@]}
do
  omarchy-pkg-add $PKG
done


for AUR in ${AURS[@]}
do
  omarchy-pkg-aur-add zen-browser-bin
done
