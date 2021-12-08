vim.opt.completeopt = { "menu", "menuone", "noselect" }

local lspkind = require "lspkind"
lspkind.init()

local cmp = require "cmp"

cmp.setup {
snippet = {
    expand = function(args)
        vim.fn["UltiSnips#Anon"](args.body)
    end,
},

mapping = {
  ['<C-e>'] = cmp.mapping.close(),
  ['<Tab>'] = cmp.mapping({
    i = cmp.mapping.confirm({ select = true }),
    c = cmp.mapping.confirm({ select = false }),
  }),
  ['<C-n>'] = function(fallback)
    if cmp.visible() then
      cmp.select_next_item()
    else
      fallback()
    end
  end,
  ['<C-p>'] = function(fallback)
    if cmp.visible() then
      cmp.select_prev_item()
    else
      fallback()
    end
  end,
},

sources = {
    { name = "nvim_lsp", max_item_count = 10},
    { name = "ultisnips", max_item_count = 8},
    { name = "buffer", max_item_count = 5},
    { name = "path" },
},

formatting = {
    format = lspkind.cmp_format {
      with_text = true,
      menu = {
        ultisnips = "[Snip]",
        nvim_lua = "[Lua]",
        nvim_lsp = "[Lsp]",
        path = "[Path]",
        buffer = "[Buf]",
      },
    },
},

experimental = {
    native_menu = false,
    ghost_text = false,
},
}
