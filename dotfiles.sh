#!/bin/sh

omarchy-pkg-add stow

rm -rf ~/.config/nvim

cd ~/dotfiles/
stow * --adopt
cd ~/omarchy-setup/
