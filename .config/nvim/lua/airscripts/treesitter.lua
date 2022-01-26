local treesitter_configs = require('nvim-treesitter.configs')

treesitter_configs.setup {
  highlight = { enable = true },
  incremental_selection = { enable = true },
  textobjects = { enable = true },
}
