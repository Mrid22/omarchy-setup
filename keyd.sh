#!/bin/sh

# Symlink Keyd
sudo ln -s ~/dotfiles/keyd/.config/keyd/default.conf /etc/keyd/default.conf

sudo systemctl enable --now keyd

sudo keyd reload
