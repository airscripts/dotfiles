#!/bin/bash
vim_folder=./core/vim

if [ -d $vim_folder ]; then
	rm -r $vim_folder
	mkdir $vim_folder
fi

cp -r ~/.vimrc $vim_folder
