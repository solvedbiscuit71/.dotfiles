-- set
local set = vim.opt

set.cursorline = true
set.expandtab = true
set.hls = false
set.number = true
set.relativenumber = true
set.scrolloff = 20
set.shiftwidth = 4
set.showmode = false
set.signcolumn = "yes"
set.tabstop = 4
set.termguicolors = true

-- let
local let = vim.g

let.python3_host_prog='/opt/homebrew/bin/python3'
-- let.lightline = {
--     ['colorscheme'] = 'seoul256',
-- }

let.netrw_banner = 0
let.netrw_winsize = 18 
let.netrw_browse_split = 0

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
