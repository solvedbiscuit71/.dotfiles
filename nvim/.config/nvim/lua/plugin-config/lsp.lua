local EnableSnippet = vim.lsp.protocol.make_client_capabilities()
EnableSnippet.textDocument.completion.completionItem.snippetSupport = true

-- Keybinds will be added to buffer on attach!
local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

    local opts = { noremap=true, silent=true }
    buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'R', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', 'gh', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
end

-- default settings
local servers = {
    -- added the server-name here
    -- check https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
}

for key,value in ipairs(servers) do
    require'lspconfig'[value].setup{
        on_attach = on_attach,
        capabilities = EnableSnippet,
        root_dir = function()
            return vim.loop.cwd()
        end
    }
end

-- language specfic settings
require('lspconfig').clangd.setup{
    on_attach = on_attach,
    capabilities = EnableSnippet,
    root_dir = function()
        return vim.loop.cwd()
    end,
    init_options = {
        fallbackFlags = {
            "-std=c++17"
        }
    }
}
