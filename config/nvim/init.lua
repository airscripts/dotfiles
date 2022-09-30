vim.g.mapleader = "<Space>"
vim.g.oscyank_term = "default"

vim.o.tabstop = 2
vim.o.mouse = "a"
vim.o.number = true
vim.o.hidden = true
vim.o.showcmd = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.autowrite = true
vim.o.modifiable = true
vim.o.ignorecase = true
vim.o.background = "dark"
vim.o.termguicolors = true
vim.o.shiftwidth = vim.o.tabstop
vim.o.completeopt = "menu,menuone,noselect"

vim.cmd("filetype on")
vim.cmd("colorscheme catppuccin")
vim.cmd("filetype plugin indent on")
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")

vim.cmd([[
	if has("syntax")
		syntax on
	endif
]])

vim.cmd([[
	map <silent> <C-s> :w<CR>
	map <silent> <C-c> :OSCYank<CR>
	map <silent> <C-p> :Telescope<CR>
	map <silent> <C-f> :Telescope find_files<CR>
	map <silent> <C-t> :NvimTreeToggle<CR><C-w>w
	inoremap <S-Tab> <C-d>
	inoremap <silent>f<C-j> :ToggleTerm direction=float<CR>
	inoremap <silent><C-j> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
	vnoremap <Tab> >>
	vnoremap <S-Tab> <<
	tnoremap <esc> <C-\><C-N>
	nnoremap <silent>[bn :bn<CR>
	nnoremap <silent>[bp :bp<CR>
	nnoremap <silent>[nb :tabnew<CR>
	nnoremap <silent>[bd :bd<CR>:bp<CR>
	nnoremap <silent>f<C-j> :ToggleTerm direction=float<CR>
	nnoremap <silent><C-j> <Cmd>exe v:count1 . "ToggleTerm"<CR>
]])

require("plugins")
require("core.mason")
require("core.mason-lspconfig")
require("core.lspconfig")
require("core.cmp")
require("core.treesitter")
require("core.dap")
require("core.dap-ui")
require("core.telescope")
require("core.nvim-tree")
require("core.alpha")
require("core.bufferline")
require("core.lualine")
require("core.toggleterm")
require("core.catppuccin")
require("core.which-key")
