#!/bin/sh

if  ! omarchy-theme-current | grep "Osaka Jade"; then
  omarchy-theme-set "Osaka Jade"
  omarchy-theme-bg-set ~/.local/share/omarchy/themes/osaka-jade/backgrounds/1-glowing-city.jpg
fi
