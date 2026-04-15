#!/bin/sh

yes | omarchy-remove-preinstalls
omarchy-pkg-drop \
	chromium \
  nautilus-python \
	impala \
	bluetui \
	omarchy-nvim \
	omarchy-walker \
