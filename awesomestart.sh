#!/bin/bash

picom --backend xrender &
setxkbmap -option caps:none
nitrogen --restore &
xrdb ~/.Xresources
xrdb ~/.cache/wal/colors.Xresources

if [ -f /usr/bin/gentoo-pipewire-launcher ]; then
	pgrep pipewire || gentoo-pipewire-launcher &
fi

pgrep udiskie || udiskie &
