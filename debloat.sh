#!/bin/sh

yes | omarchy-remove-preinstalls
omarchy-pkg-drop chromium
omarchy-pkg-drop nautilus-python
