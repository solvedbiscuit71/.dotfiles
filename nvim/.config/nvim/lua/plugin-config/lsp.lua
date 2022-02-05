local EnableSnippet = vim.lsp.protocol.make_client_capabilities()
EnableSnippet.textDocument.completion.completionItem.snippetSupport = true

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'R', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'gh', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
end

-- NOTE: these server need to be installed
-- ```
-- npm i -g vscode-langservers-extracted
-- npm i -g typescript typescript-language-server
-- ```
local servers = {
  'html',
  'cssls',
  'tsserver',
  'jsonls'
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
