#!/bin/bash

picom --backend xrender &
setxkbmap -option caps:none
nitrogen --restore &

if [ -f /usr/bin/gentoo-pipewire-launcher ]; then
	pgrep pipewire || gentoo-pipewire-launcher &
fi

udiskie &
