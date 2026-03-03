#!/bin/sh

. ./ghostty.sh
. ./dotfiles.sh
. ./keyd.sh
. ./theme.sh
. ./apps.sh
. ./neovim.sh
. ./proton-vpn.sh
. ./debloat.sh
. ./gh.sh
. ./zsh.sh

gum confirm "Reboot recommended, ready?" && omarchy-system-reboot
