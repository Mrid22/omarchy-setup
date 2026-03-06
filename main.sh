#!/bin/sh

. ./ghostty.sh
. ./dotfiles.sh
. ./keyd.sh
. ./theme.sh
. ./apps.sh
. ./proton-vpn.sh
. ./debloat.sh
. ./gh.sh

gum confirm "Reboot recommended, ready?" && omarchy-system-reboot
