-- Loading Packer
return require('packer').startup(function()
    -- Packer
    use 'wbthomason/packer.nvim'

    -- ColorScheme
    use 'lifepillar/vim-gruvbox8'
    use 'nvim-lualine/lualine.nvim'
    -- use 'itchyny/lightline.vim'

    -- Icon
    use 'ryanoasis/vim-devicons'
    use 'kyazdani42/nvim-web-devicons'

    -- Operator
    use 'tpope/vim-repeat'
    use 'tpope/vim-commentary'
    use 'tpope/vim-surround'

    -- Git
    use 'tpope/vim-fugitive'
    use 'lewis6991/gitsigns.nvim'

    -- TextObj
    use 'kana/vim-textobj-user'
    use 'kana/vim-textobj-line' -- il
    use 'kana/vim-textobj-indent' -- ii & ai
    use 'kana/vim-textobj-entire' -- ie & ae

    -- ClipBoard
    use 'vim-scripts/ReplaceWithRegister'

    -- Auto Close
    use 'alvan/vim-closetag'

    -- Telescope
    use 'nvim-telescope/telescope.nvim'
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use 'ThePrimeagen/git-worktree.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'onsails/lspkind-nvim'

    -- Snippets
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    -- SyntaxHiglight
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- FloatWindow
    use 'nvim-lua/plenary.nvim'
    use 'ThePrimeagen/harpoon'
    use 'voldikss/vim-floaterm'

    -- VimWiki
    use 'vimwiki/vimwiki'
    use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'}
end)
