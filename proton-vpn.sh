#!/bin/sh

omarchy-pkg-add networkmanager network-manager-applet openvpn

if systemctl is-enabled iwd | grep enabled; then
  sudo systemctl stop iwd.service
  sudo systemctl disable iwd.service
  sudo systemctl mask iwd.service
fi

sudo systemctl enable --now NetworkManager.service
