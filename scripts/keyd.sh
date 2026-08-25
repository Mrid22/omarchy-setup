#!/bin/sh

if omarchy pkg present keyd; then
  sudo cp ./keyd.conf /etc/keyd/default.conf
  systemctl enable --now keyd
else
  echo "please run ress first"
fi

