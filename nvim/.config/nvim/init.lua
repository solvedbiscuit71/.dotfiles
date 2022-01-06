-- importing plugins
require'plugin'

-- set
local set = vim.opt

set.number = true
set.relativenumber = true
set.wildmenu = true
set.tabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.hls = false
set.termguicolors = true
set.signcolumn = "yes"
set.scrolloff = 999
set.cursorline = true

-- let
local let = vim.g
let.python3_host_prog='/opt/homebrew/bin/python3'
let.vimwiki_list = {
  {
    path = '~/Documents/.vimwiki',
    path_html = '~/Documents/.vimwiki_html',
    syntax = 'markdown',
    ext = '.md',
  }
}

let.closetag_filenames = '*.html,*.jsx,*.tsx'
let.closetag_regions =  {
  ['typescript.tsx'] = 'jsxRegion,tsxRegion',
  ['javascript.jsx'] = 'jsxRegion'
}

let.floaterm_title = " Terminal [$1/$2] "
let.floaterm_width = 0.9
let.floaterm_height = 0.9
let.floaterm_wintype = 'float'
let.floaterm_position = 'center'

let.nvim_tree_quit_on_open = 1
let.nvim_tree_indent_markers = 1
let.nvim_tree_respect_buf_cwd = 1
let.nvim_tree_show_icons = {
  git = 0,
  folders = 1,
  files = 1,
  folder_arrows = 1,
}

let.mkdp_page_title = '-- ${name} --'
let.mkdp_filetypes = { 'markdown' }

-- colorscheme
vim.cmd[[colorscheme gruvbox8_hard]]

-- highlights
vim.cmd[[highlight FloatermBorder guifg=none guibg=none]]

-- autocmd
require'autocmd'

-- keybinddings
require'mappings'

-- plugin configuration
require'plugins'
