#!/bin/bash
sudo pacman -S neovim
cp -r ../config/nvim ~/.config/
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim -c PackerSync
