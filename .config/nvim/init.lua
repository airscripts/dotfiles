vim.cmd([[
set number
set background=dark
set showcmd
set showmatch
set ignorecase
set smartcase
set incsearch
set autowrite
set hidden
set mouse=a
set termguicolors
set completeopt=menu,menuone,noselect
set nocompatible
]])

vim.cmd([[
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
call vundle#end()         
]])

vim.cmd("filetype on")               
vim.cmd("filetype plugin indent on")
vim.cmd("runtime! debian.vim")

vim.cmd([[
if has("syntax")
  syntax on
endif
]])

vim.cmd([[
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
]])

vim.cmd([[
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
]])

vim.g.catppuccin_flavour = "frappe"

require("plugins")
require("airscripts.telescope")
require("airscripts.treesitter")
require("airscripts.lualine")
require("airscripts.catppuccin")
require("airscripts.dap")
require("airscripts.dap-ui")
require("bufferline").setup{}
require("mason").setup()
require("mason-lspconfig").setup()

vim.cmd([[
colorscheme catppuccin
hi Normal guibg=NONE ctermbg=NONE
]])

local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },

  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  },

  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),

  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
  }, {
    { name = 'buffer' },
  })
})

cmp.setup.filetype("gitcommit", {
  sources = cmp.config.sources({
    { name = "cmp_git" },
  }, {
    { name = "buffer" },
  })
})

cmp.setup.cmdline("/", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = "buffer" }
  }
})

cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = "path" }
  }, {
    { name = "cmdline" }
  })
})

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  
require'lspconfig'.dockerls.setup {
  capabilities = capabilities
}

require'lspconfig'.yamlls.setup{}

