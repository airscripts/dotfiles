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
map <silent> <C-t> :Telescope<CR>
map <silent> <C-n> :NERDTreeFocus<CR>
map <silent> <C-g> :Telescope live_grep<CR>
map <silent> <C-f> :Telescope find_files<CR>
map <silent> <C-p> :Telescope current_buffer_fuzzy_find<CR> 

nnoremap <silent>[n :bn<CR>
nnoremap <silent>]n :bp<CR>
nnoremap <silent>]d :bd<CR>
nnoremap <silent>[d :tabnew<CR>
nnoremap <silent>]c :BufferLinePick<CR>
nnoremap <silent>[b :BufferLineCycleNext<CR>
nnoremap <silent>]b :BufferLineCyclePrev<CR>
nnoremap <silent>[c :BufferLinePickClose<CR>
nnoremap <silent>[p :BufferLineTogglePin<CR>

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
call vundle#end()         
]])

require("plugins")

require("mason").setup()
require("bufferline").setup{}
require("mason-lspconfig").setup()

require("core.cmp")
require("core.lsp")
require("core.dap")
require("core.dap-ui")
require("core.lualine")
require("core.telescope")
require("core.treesitter")
require("core.catppuccin")
