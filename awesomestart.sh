#!/bin/bash

picom --backend xrender &
setxkbmap -option caps:escape
nitrogen --restore &

if [ -f /usr/bin/gentoo-pipewire-launcher ]; then
	killall pipewire; gentoo-pipewire-launcher &
fi

udiskie &
