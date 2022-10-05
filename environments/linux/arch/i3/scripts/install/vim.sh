#!/bin/bash
sudo pacman -S vim
cp ../core/vim/vimrc ~/
git clone --depth 1 https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c "PluginInstall"
