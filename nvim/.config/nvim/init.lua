-- set
local set = vim.opt

set.cursorline = true
set.expandtab = true
set.hls = false
set.number = true
set.relativenumber = true
set.scrolloff = 5
set.shiftwidth = 4
set.showmode = false
set.signcolumn = "yes"
set.tabstop = 4
set.termguicolors = true

-- let
local let = vim.g

let.nvim_tree_quit_on_open = 1
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
let.floaterm_width = 0.9
let.floaterm_height = 0.9
let.floaterm_wintype = 'float'
let.floaterm_position = 'center'

let.mkdp_page_title = '${name}'
let.mkdp_filetypes = { 'markdown' }

-- Loading Plugins
require'plugin'

-- colorscheme
vim.cmd[[colorscheme gruvbox8_hard]]

-- highlights
vim.cmd[[highlight FloatermBorder guifg=none guibg=none]]

-- keybinds
require'keybinds'

-- autocmds
require'autocmds'

-- Plugin Configuration
require'plugin-config'

-- Loading Snippets
-- Note: this is an private repo for my snippets collection.
-- commit the line below to avoid "module mysnippets not found" error.
require'mysnippets'
