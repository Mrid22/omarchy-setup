omarchy-pkg-add stow

if [ ! -d ~/dotfiles ]; then
  gh repo clone dotfiles ~/dotfiles
fi

cd ~/dotfiles
stow --adopt *
