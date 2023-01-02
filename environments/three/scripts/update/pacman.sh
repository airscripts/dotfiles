#!/bin/bash
pacman_folder=./core/pacman

if [ -d $pacman_folder ]; then
	rm -r $pacman_folder
fi

cp -r ~/.config/pacman ./core
