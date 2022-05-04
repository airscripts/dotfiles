set number
set nocompatible       
filetype on               

lua require('plugins')
lua require('airscripts.telescope')
lua require('airscripts.treesitter')
lua require('airscripts.lualine')
lua require('airscripts.catppuccin')

set rtp+=~/.vim/bundle/Vundle.vim
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

colorscheme catppuccin

set background=dark
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
