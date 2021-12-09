local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local nvim_lsp = require'lspconfig'
local servers = {'clangd','html','pyright'}

for _,lsp in ipairs(servers) do
    nvim_lsp[lsp].setup{
        capabilities = capabilities,
    }
end
