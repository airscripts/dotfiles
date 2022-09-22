set number
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf
set showcmd
set showmatch
set ignorecase
set smartcase
set incsearch
set autowrite
set hidden
set mouse=a

filetype on
filetype plugin indent on

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
call vundle#end()

runtime! debian.vim

if has("syntax")
  syntax on
endif

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

