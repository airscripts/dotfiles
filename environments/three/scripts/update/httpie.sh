#!/bin/bash
httpie_folder=./core/httpie

if [ -d $httpie_folder ]; then
	rm -r $httpie_folder
fi

cp -r ~/.config/httpie ./core
