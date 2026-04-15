#!/bin/sh

. ./ghostty.sh
. ./dotfiles.sh
. ./keyd.sh
. ./theme.sh
. ./debloat.sh
. ./apps.sh
. ./proton-vpn.sh
. ./gh.sh

gum confirm "Reboot recommended, ready?" && omarchy-system-reboot
