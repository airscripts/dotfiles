#!/bin/bash
xinit_folder=./core/xinit

if [ -d $xinit_folder ]; then
	rm -r $xinit_folder
	mkdir $xinit_folder
fi

cp -r ~/.xinitrc $xinit_folder
