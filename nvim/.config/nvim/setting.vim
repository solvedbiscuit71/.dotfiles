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

" highlights
hi FloatermBorder guifg=none
