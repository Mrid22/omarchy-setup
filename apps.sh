#!/bin/sh

if omarchy pkg missing zen-browser; then
  omarchy install browser zen
  omarchy default browser zen
fi

if omarchy pkg missing ghostty; then
  omarchy install terminal ghostty
  omarchy default terminal ghostty
fi

if omarchy pkg missing steam; then
  omarchy install gaming steam
fi

if omarchy pkg missing xpadneo-dkms; then
  omarchy install gaming xbox controllers
fi

omarchy pkg add obs-studio lazydocker
omarchy pkg aur add finamp-bin
