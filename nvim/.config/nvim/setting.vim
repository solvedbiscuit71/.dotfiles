" ======================
" Vim's Configuration
" ======================

colorscheme gruvbox

" set
set number relativenumber
set hidden
set path+=**
set wildmenu
set tabstop=2
set shiftwidth=2
set expandtab
set nohls
set termguicolors
set signcolumn=yes
set scrolloff=999
set cursorline

" let
let g:python3_host_prog='/opt/homebrew/bin/python3'
let g:vimwiki_list = [{'path': '~/Documents/.vimwiki',
                       \ 'path_html': '~/Documents/.vimwiki_html'}]

let g:closetag_filenames = '*.html,*.jsx,*.tsx'
let g:closetag_regions =  {
\ 'typescript.tsx': 'jsxRegion,tsxRegion',
\ 'javascript.jsx': 'jsxRegion',
\ }

let g:floaterm_title = " Terminal [$1/$2] "
let g:floaterm_width = 0.9
let g:floaterm_height = 0.9
let g:floaterm_wintype = 'float'
let g:floaterm_position = 'center'

" Nvim-tree
let g:nvim_tree_quit_on_open = 1
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_respect_buf_cwd = 1
let g:nvim_tree_show_icons = {
    \ 'git': 0,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 1,
    \ }

" highlights
hi FloatermBorder guifg=none
