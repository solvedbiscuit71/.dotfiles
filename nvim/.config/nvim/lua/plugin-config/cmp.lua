vim.opt.completeopt = { "menu", "menuone", "noselect" }

local lspkind = require "lspkind"
lspkind.init()

local cmp = require "cmp"

cmp.setup {
  snippet = {
    expand = function(args)
        require('luasnip').lsp_expand(args.body)
    end,
  },

  mapping = {
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
    { name = "luasnip" },
    { name = "nvim_lsp", max_item_count = 15 },
    { name = "buffer" },
    { name = "path" },
  },

  formatting = {
    format = lspkind.cmp_format {
      with_text = true,
      menu = {
        luasnip = "  ",
        nvim_lsp = "  ",
        buffer = " ﬘ ",
        path = " פּ ",
      },
    },
  },

  experimental = {
    native_menu = false,
    ghost_text = true,
  },
}
