-- neovim setting
local set = vim.opt

set.cursorline = true
set.expandtab = true
set.hls = false
set.number = true
set.relativenumber = true
set.scrolloff = 10
set.shiftwidth = 2
set.showmode = false
set.signcolumn = "yes"
set.tabstop = 2
set.termguicolors = true

-- neovim plugin setting
local let = vim.g

let.nvim_tree_indent_markers = 1
let.nvim_tree_respect_buf_cwd = 1
let.nvim_tree_root_folder_modifier = ':~:t'
let.nvim_tree_show_icons = {
  git = 0,
  folders = 1,
  files = 1,
  folder_arrows = 1,
}

let.vimwiki_list = {
  {
    path = '~/Documents/.vimwiki',
    path_html = '~/Documents/.vimwiki_html',
    syntax = 'markdown',
    ext = '.md',
  }
}

let.floaterm_title = " Terminal [$1/$2] "
let.floaterm_width = 0.6
let.floaterm_height = 0.8
let.floaterm_wintype = 'float'
let.floaterm_position = 'center'

-- neovim plugins
require("plugins")

-- neovim plugin configuration
require("plugin-config")

-- neovim colorscheme
vim.cmd[[colorscheme gruvbox8_hard]]
vim.cmd[[highlight FloatermBorder guifg=none guibg=none]]

-- neovim keymaps
require("keymaps")

-- neovim autocmds
require("autocmds")

-- luasnips
-- commit the line below if you don't want to require the 'snippets' directory
require("snippets")
