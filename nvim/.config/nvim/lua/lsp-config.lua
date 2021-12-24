local EnableSnippet = vim.lsp.protocol.make_client_capabilities()
EnableSnippet.textDocument.completion.completionItem.snippetSupport = true

local server = {
    'clangd',
    'pyright',
    'html',
    'cssls',
    'tsserver',
    'tailwindcss'
    -- For more server.. (check https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)
}

for key,value in ipairs(server) do
    require'lspconfig'[value].setup{
        capabilities = EnableSnippet,
        root_dir = function()
            return vim.loop.cwd()
        end
    }
end
