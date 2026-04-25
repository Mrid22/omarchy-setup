#!/bin/sh

omarchy-pkg-add stow

# Remove default configs
rm -rf ~/.config/nvim
rm -rf ~/.config/hypr
rm -rf ~/.config/btop/btop.conf
rm -rf ~/.config/ghostty
rm -rf ~/.config/git
rm -rf ~/.bashrc

# Remove uneeded configs
rm -rf ~/.config/alacritty/
rm -rf ~/.config/Typora/
rm -rf ~/.config/chromium
rm -rf ~/.config/chromium-flags.conf
rm -rf ~/.config/brave-flags.conf

git clone https://github.com/Mrid22/dotfiles/ ~/dotfiles

cd ~/dotfiles/
stow * --adopt
cd ~/omarchy-setup/
