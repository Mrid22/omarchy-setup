#!/bin/sh

if  ! command zsh ; then
   omarchy-pkg-add omarchy-zsh
   omarchy-setup-zsh
fi
