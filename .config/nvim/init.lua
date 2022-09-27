vim.cmd([[
set number
set hidden
set mouse=a
set showcmd
set showmatch
set smartcase
set incsearch
set autowrite
set ignorecase
set nocompatible
set termguicolors
set background=dark
set rtp+=~/.vim/bundle/Vundle.vim
set completeopt=menu,menuone,noselect

filetype on               
runtime! debian.vim
colorscheme catppuccin
filetype plugin indent on
let g:oscyank_term = 'default'
hi Normal guibg=NONE ctermbg=NONE

if has("syntax")
  syntax on
endif

map <silent> <C-s> :w<CR>
map <silent> <C-c> :OSCYank<CR>
map <silent> <C-p> :Telescope<CR>
map <silent> <C-f> :Telescope find_files<CR>
map <silent> <C-t> :NvimTreeToggle<CR><C-w>w

inoremap <S-Tab> <C-d>

vnoremap <Tab> >>
vnoremap <S-Tab> <<

tnoremap <esc> <C-\><C-N>

nnoremap <silent>[bn :bn<CR>
nnoremap <silent>[bp :bp<CR>
nnoremap <silent>[bd :bd<CR>[bp
nnoremap <silent>[nb :tabnew<CR>

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
call vundle#end()
]])

require("plugins")

require("core.mason")
require("core.mason-lspconfig")
require("core.bufferline")

require("core.cmp")
require("core.lspconfig")
require("core.dap")
require("core.dap-ui")
require("core.lualine")
require("core.telescope")
require("core.nvim-tree")
require("core.treesitter")
require("core.catppuccin")
