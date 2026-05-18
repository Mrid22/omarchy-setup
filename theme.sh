#!/bin/sh

if ! omarchy theme current | grep "Osaka Jade" >/dev/null 2>&1; then
  omarchy theme set "Osaka Jade"
  omarchy plymouth set by theme "osaka-jade"
  omarchy theme bg set $HOME/.local/share/omarchy/themes/osaka-jade/backgrounds/1-glowing-city.jpg
fi
