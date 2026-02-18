#!/bin/sh

paru -S --needed --noconfirm stow

rm -rf ~/.config/hypr
rm -rf ~/.config/kitty 

if [[ ! -d ~/dotfiles ]]; then
  git clone https://github.com/Mrid22/dotfiles ~/dotfiles
fi

cd ~/dotfiles
stow * --adopt


