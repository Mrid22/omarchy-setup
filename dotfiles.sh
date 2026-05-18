#!/bin/sh


omarchy pkg add stow

# Override defaults

DEFULTS=(
	"~/.config/waybar"
	"~/.config/nvim"
	"~/.config/git"
	"~/.config/ghostty"
)

for FILE in $DEFULTS[@]
do
  if [[ ! -L $FILE ]]; then
    rm -rf $FILE
  fi
done

# Cloe repo
if [[ ! -d ~/dotfiles ]]; then
  git clone https://github.com/Mrid22/dotfiles ~/dotfiles
fi

# Apply changes
cd ~/dotfiles
stow * --adopt
