#!/bin/sh

omarchy-pkg-aur-add \
	zen-browser-bin 

omarchy-pkg-add \
	git-delta \
	godot \
	blender \
	ntfs-3g \
	docker \
	docker-compose \
	yt-dlp \
	vicinae-bin \
	finamp \


if ! command -v python; then
	omarchy-install-dev-env python
fi

if ! command -v node; then
	omarchy-install-dev-env node
fi
