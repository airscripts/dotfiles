require('nvim-cursorline').setup {
  cursorline = {
    timeout = 0,
    enable = true,
    number = false,
  },

  cursorword = {
    enable = true,
    min_length = 3,
    hl = { underline = true },
  }
}
