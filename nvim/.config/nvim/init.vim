" ======================
" Import Plugin
" ======================

call plug#begin('~/.vim/plugged')

" Theme and Looks
Plug 'morhetz/gruvbox'
Plug 'akinsho/bufferline.nvim'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'kyazdani42/nvim-web-devicons'

" Opertors
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/ReplaceWithRegister'

" Custom Text-Object
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-indent'

" Git
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'

" Git-Worktree
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

source ~/.config/nvim/setting.vim
source ~/.config/nvim/autocmd.vim
source ~/.config/nvim/keybind.vim

" ======================
" Plugin's Configuration
" ======================

luafile ~/.config/nvim/lua/gitsigns-config.lua
luafile ~/.config/nvim/lua/worktree-config.lua
luafile ~/.config/nvim/lua/treesitter-config.lua
luafile ~/.config/nvim/lua/cmp-config.lua
luafile ~/.config/nvim/lua/lsp-config.lua
luafile ~/.config/nvim/lua/telescope-config.lua
luafile ~/.config/nvim/lua/bufferline-config.lua
