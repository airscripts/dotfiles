set number
set nocompatible
filetype on

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

runtime! debian.vim

if has("syntax")
  syntax on
endif

set showcmd
set showmatch
set ignorecase
set smartcase
set incsearch
set autowrite
set hidden
set mouse=a

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
