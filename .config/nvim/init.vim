set number
set nocompatible       
filetype on               

lua require('plugins')
lua require('airscripts.telescope')
lua require('airscripts.treesitter')
lua require('airscripts.lualine')
lua require('airscripts.catppuccin')

set termguicolors
lua << EOF
require("bufferline").setup{}
EOF

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

hi Normal guibg=NONE ctermbg=NONE

map <silent> <C-n> :NERDTreeFocus<CR>

nnoremap <silent>[b :BufferLineCycleNext<CR>
nnoremap <silent>]b :BufferLineCyclePrev<CR>

nnoremap <silent>[c :BufferLinePickClose<CR>
nnoremap <silent>]c :BufferLinePick<CR>

nnoremap <silent>[p :BufferLineTogglePin<CR>

nnoremap <silent><mymap> :BufferLineMoveNext<CR>
nnoremap <silent><mymap> :BufferLineMovePrev<CR>

nnoremap <silent>be :BufferLineSortByExtension<CR>
nnoremap <silent>bd :BufferLineSortByDirectory<CR>
nnoremap <silent><mymap> :lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)<CR>

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
