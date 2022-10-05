return require("packer").startup(function()
  use { "wbthomason/packer.nvim" }

	use { "hrsh7th/cmp-path" }
	use { "hrsh7th/nvim-cmp" }
	use { "L3MON4D3/LuaSnip" }
	use { "tpope/vim-fugitive" }
	use { "hrsh7th/cmp-buffer" }
	use { "hrsh7th/cmp-cmdline" }
  use { "goolord/alpha-nvim" }
	use { "hrsh7th/cmp-nvim-lsp" }
	use { "folke/which-key.nvim" }
  use { "ojroques/vim-oscyank" }
  use { "neovim/nvim-lspconfig" }
  use { "mfussenegger/nvim-dap" }
  use { "williamboman/mason.nvim" }
	use { "saadparwaiz1/cmp_luasnip" }
  use { "williamboman/mason-lspconfig.nvim" }

	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
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
    "kyazdani42/nvim-tree.lua",
    requires = {"kyazdani42/nvim-web-devicons"},
  }

  use {
    "akinsho/toggleterm.nvim",
    tag = "*"
  }

  use({
    "jose-elias-alvarez/null-ls.nvim",
    config = function() require("null-ls").setup() end,
    requires = { "nvim-lua/plenary.nvim" },
  })

  use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true }
  }

  use {
    "akinsho/bufferline.nvim",
    tag = "v2.8.1",
    requires = "kyazdani42/nvim-web-devicons"
  }

  use({
    "catppuccin/nvim",
    as = "catppuccin"
  })
end)
