#!/bin/sh

omarchy-pkg-add stow

rm -rf ~/.config/nvim
rm -rf ~/.config/hypr
rm -rf ~/.config/ghostty

git clone https://github.com/Mrid22/dotfiles/ ~/dotfiles

cd ~/dotfiles/
stow * --adopt
cd ~/omarchy-setup/
