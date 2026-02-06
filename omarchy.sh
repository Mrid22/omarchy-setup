#!/bin/sh

if ! omarchy-theme-current | grep -q "Osaka Jade"; then
  omarchy-theme-set "Osaka Jade"
else
  echo "Theme already set"
fi
