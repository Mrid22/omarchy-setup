#!/bin/sh

omarchy-pkg-add stow

cd ~/dotfiles/
stow *
cd ~/omarchy-setup/
