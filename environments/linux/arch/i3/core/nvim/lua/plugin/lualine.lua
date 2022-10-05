local lualine = require("lualine")

lualine.setup {
  options = {
    icons_enabled = true,
    theme = "catppuccin",
    disabled_filetypes = {},
    always_divide_middle = true,
    section_separators = { left = "", right = ""},
    component_separators = { left = "", right = ""},
  },

  sections = {
    lualine_a = {"mode"},
    lualine_c = {"filename"},
    lualine_y = {"progress"},
    lualine_z = {"location"},
    lualine_b = {"branch", "diff", "diagnostics"},
    lualine_x = {"encoding", "fileformat", "filetype"},
  },

  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {"filename"},
    lualine_x = {"location"},
  },

  tabline = {},
  extensions = {}
}
