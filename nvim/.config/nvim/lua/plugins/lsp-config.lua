local EnableSnippet = vim.lsp.protocol.make_client_capabilities()
EnableSnippet.textDocument.completion.completionItem.snippetSupport = true

-- The following keys will be mapped after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

  -- Mappings
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', 'R', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', 'gh', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>p', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

local servers = {
    'clangd',
    'pyright',
    'html',
    'cssls',
    'tsserver',
    'tailwindcss'
    -- For more server.. (check https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)
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
