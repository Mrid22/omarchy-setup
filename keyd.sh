#!/bin/sh

if ! systemctl is-enabled keyd >/dev/null 2>&1; then
  omarchy-pkg-add keyd
  
  sudo systemctl enable --now keyd
  sudo touch /etc/keyd/default.conf
  
  cat keyd.conf | sudo tee /etc/keyd/default.conf
  sudo keyd reload
fi

