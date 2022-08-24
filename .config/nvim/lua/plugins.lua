return require('packer').startup(function() 
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

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
end)
