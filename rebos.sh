#!/bin/sh
if ! command -v rebos ; then
  paru -S --needed --noconfirm rebos-git
  rebos setup
  rebos gen commit "init"
  rebos gen current build
fi
