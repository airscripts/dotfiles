local catppuccin = require("catppuccin")

catppuccin.setup({
  cmp = true,
  hop = false,
  fern = false,
  notify = true,
  neogit = false,
  barbar = false,
  gitsigns = true,
  markdown = true,
  lsp_saga = false,
  telescope = true,
  dashboard = true,
  gitgutter = false,
  which_key = false,
  vim_sneak = false,
  bufferline = true,
  telekasten = true,
  lightspeed = false,
  ts_rainbow = false,
  term_colors = false,
  lsp_trouble = false,
  symbols_outline = true,
  transparent_background = false,

  styles = {
    strings = {},
    comments = { "italic" },
    keywords = { "italic" },
    functions = { "italic" },
    variables = { "italic" },
  },

  integrations = {
    treesitter = true,

    native_lsp = {
      enabled = true,

      virtual_text = {
				hints = { "italic" },
        errors = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
      },

      underlines = {
        hints = { "underline" },
        errors = { "underline" },
        warnings = { "underline" },
        information = { "underline" },
      },
  },

  nvimtree = {
    enabled = true,
    show_root = false,
    transparent_panel = false,
  },

  neotree = {
    enabled = false,
    show_root = false,
    transparent_panel = false,
  },

  indent_blankline = {
    enabled = true,
    colored_indent_levels = false,
  },
}})
