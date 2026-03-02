#!/bin/sh

omarchy-pkg-add stow

cd ~/dotfiles/
stow * --adopt
cd ~/omarchy-setup/
