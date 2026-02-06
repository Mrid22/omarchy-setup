if ! systemctl is-enabled keyd ; then
  omarchy-pkg-add keyd
  cat ./keyd.conf | sudo tee /etc/keyd/default.conf
  systemctl enable --now keyd
  sudo keyd reload
else
  echo "keyd already setup"
fi
