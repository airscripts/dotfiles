#!/bin/bash
alacritty_folder=./core/alacritty

if [ -d $alacritty_folder ]; then
	rm -r $alacritty_folder
fi

cp -r ~/.config/alacritty ./core
