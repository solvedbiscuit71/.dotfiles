" ======================
" Import Plugin
" ======================

call plug#begin('~/.vim/plugged')

" Theme and Looks
Plug 'morhetz/gruvbox'
Plug 'bling/vim-airline'
Plug 'mkitt/tabline.vim'
Plug 'ryanoasis/vim-devicons'

" --------------------------------
" Removed Startify After (101a02e)
" --------------------------------

" More operators
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/ReplaceWithRegister'

" Custom text objects
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-indent'
" Note: gitsigns also provides a text objects (ih -> hunk) ( has to be set )

" Git
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'

" Git worktree
Plug 'ThePrimeagen/git-worktree.nvim'

" LanguageServer
Plug 'neovim/nvim-lspconfig'

" SyntaxHighlight
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" FuzzyFind
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" AutoCompletion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'onsails/lspkind-nvim'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

" Harpoon
Plug 'ThePrimeagen/harpoon'

" Terminal
Plug 'voldikss/vim-floaterm'

" ----------------------------------------------
" Removed Debugger Configuration After (101a02e)
" ----------------------------------------------

" Documentation
Plug 'vimwiki/vimwiki'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'alvan/vim-closetag'

" Practice!!
Plug 'ThePrimeagen/vim-be-good'

call plug#end()

" ======================
" Vim's Configuration
" ======================

colorscheme gruvbox

set number relativenumber
set hidden
set path+=**
set wildmenu
set tabstop=2
set shiftwidth=2
set expandtab
set nohls
set signcolumn=yes
set scrolloff=999
set cursorline

let g:python3_host_prog='/opt/homebrew/bin/python3'
let g:vimwiki_list = [{'path': '~/Documents/.vimwiki',
                       \ 'path_html': '~/Documents/.vimwiki_html'}]

let g:closetag_filenames = '*.html,*.jsx,*.tsx'
let g:closetag_regions =  {
\ 'typescript.tsx': 'jsxRegion,tsxRegion',
\ 'javascript.jsx': 'jsxRegion',
\ }

" ======================
" Plugin's Configuration
" ======================

" Plugins
luafile ~/.config/nvim/lua/gitsigns-config.lua
luafile ~/.config/nvim/lua/worktree-config.lua
luafile ~/.config/nvim/lua/treesitter-config.lua
luafile ~/.config/nvim/lua/cmp-config.lua
luafile ~/.config/nvim/lua/lsp-config.lua
luafile ~/.config/nvim/lua/telescope-config.lua

" source ~/.config/nvim/plugin/starify-config.vim
source ~/.config/nvim/plugin/airline-config.vim
source ~/.config/nvim/plugin/floaterm-config.vim

" Keybind & Autocmd
source ~/.config/nvim/keybind.vim
source ~/.config/nvim/autocmd.vim
