local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },

  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },

  mapping = cmp.mapping.preset.insert({
    ['<C-e>'] = cmp.mapping.abort(),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),

  sources = cmp.config.sources(
    {{ name = 'nvim_lsp' }},
    {{ name = 'buffer' }}
  )
})

cmp.setup.cmdline("/", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {{ name = "buffer" }}
})

cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources(
    {{ name = "path" }},
    {{ name = "cmdline" }}
  )
})
