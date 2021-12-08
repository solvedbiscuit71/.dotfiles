local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- C/C++
require'lspconfig'.clangd.setup {
  capabilities = capabilities,
}

-- HTML

require'lspconfig'.html.setup {
  capabilities = capabilities,
}

-- Python
require'lspconfig'.pyright.setup {
  capabilities = capabilities,
}

