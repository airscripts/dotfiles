return require('packer').startup(function()
  use {
    "wbthomason/packer.nvim",
    "ojroques/vim-oscyank"
  }

  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  use {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
  }

  use {
    "mfussenegger/nvim-dap"
  }

  use {
    "rcarriga/nvim-dap-ui",
    requires = {"mfussenegger/nvim-dap"}
  }

  use {
    "nvim-telescope/telescope.nvim",
    requires = { {"nvim-lua/plenary.nvim"} }
  }

  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }

  use {
    "goolord/alpha-nvim",
  }

  use {
    "kyazdani42/nvim-tree.lua",
    requires = {"kyazdani42/nvim-web-devicons"},
  }

  use {
    "akinsho/toggleterm.nvim",
    tag = "*"
  }

  use({
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
        require("null-ls").setup()
    end,
    requires = { "nvim-lua/plenary.nvim" },
  })

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    'akinsho/bufferline.nvim',
    tag = "v2.8.1",
    requires = 'kyazdani42/nvim-web-devicons'
  }

  use({
    "catppuccin/nvim",
    as = "catppuccin"
  })

	use {
  	"folke/which-key.nvim",
	}
end)
