local capabilities = require('cmp_nvim_lsp')
capabilities.update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig'.pylsp.setup{}
require'lspconfig'.yamlls.setup{}
require'lspconfig'.sumneko_lua.setup{}

require'lspconfig'.html.setup{
  capabilities = capabilities
}

require'lspconfig'.vuels.setup{
  capabilities = capabilities
}

require'lspconfig'.sqlls.setup{
  capabilities = capabilities
}

require'lspconfig'.cssls.setup{
  capabilities = capabilities
}

require'lspconfig'.bashls.setup{
  capabilities = capabilities
}

require'lspconfig'.jsonls.setup{
  capabilities = capabilities
}

require'lspconfig'.dockerls.setup{
  capabilities = capabilities
}

require'lspconfig'.tsserver.setup{
  capabilities = capabilities
}
