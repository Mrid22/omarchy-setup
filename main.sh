#!/bin/sh

. ./ghostty.sh
. ./dotfiles.sh
. ./keyd.sh
. ./theme.sh
. ./debloat.sh
. ./apps.sh
. ./gh.sh
. ./proton-vpn.sh

gum confirm "Reboot recommended, ready?" && omarchy-system-reboot
