local capabilities = require("cmp_nvim_lsp").default_capabilities()

local opts = { noremap=true, silent=true }
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts)

local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
  vim.keymap.set("n", "<leader>F", vim.lsp.buf.formatting, bufopts)
  vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
  vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, bufopts)

  vim.keymap.set("n", "<leader>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
end

require"lspconfig".pylsp.setup{
  on_attach = on_attach
}

require"lspconfig".yamlls.setup{
  on_attach = on_attach
}
require"lspconfig".lua_ls.setup{
  on_attach = on_attach
}

require"lspconfig".dartls.setup{
  on_attach = on_attach,
  cmd = { "dart", "language-server", "--protocol=lsp" }
}

require"lspconfig".html.setup{
  on_attach = on_attach,
  capabilities = capabilities
}

require"lspconfig".vuels.setup{
  on_attach = on_attach,
	root_dir = vim.loop.cwd,
}

require"lspconfig".sqlls.setup{
  on_attach = on_attach,
  capabilities = capabilities
}

require"lspconfig".cssls.setup{
  on_attach = on_attach,
}

require"lspconfig".bashls.setup{
  on_attach = on_attach,
}

require"lspconfig".jsonls.setup{
  on_attach = on_attach,
}

require"lspconfig".dockerls.setup{
  on_attach = on_attach,
  capabilities = capabilities
}

require"lspconfig".tsserver.setup{
  on_attach = on_attach,
	root_dir = vim.loop.cwd,
}
