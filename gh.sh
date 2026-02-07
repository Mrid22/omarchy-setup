if  ! gh auth status | grep "Active account: true"; then
  xdg-open https://github.com/login/device
  echo | gh auth login -p ssh -c --web
else
  git remote set-url origin git@github.com:Mrid22/omarchy-setup.git
  echo "Switched to ssh"
fi
