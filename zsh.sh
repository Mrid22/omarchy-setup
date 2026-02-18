#!/bin/sh

if echo $SHELL != $(which zsh); then
  chsh -s $(which zsh)
  sudo chsh -s $(which zsh)
fi
