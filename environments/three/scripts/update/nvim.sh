#!/bin/bash
nvim_folder=./core/nvim

if [ -d $nvim_folder ]; then
	rm -r $nvim_folder
fi

cp -r ~/.config/nvim ./core
