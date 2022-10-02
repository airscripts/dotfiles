vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.oscyank_term = "default"
vim.g.catppuccin_flavour = "frappe"

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
vim.o.term = "screen-256color"
vim.o.shiftwidth = vim.o.tabstop
vim.o.completeopt = "menu,menuone,noselect"

vim.cmd("filetype on")
vim.cmd("colorscheme catppuccin")
vim.cmd("filetype plugin indent on")
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
