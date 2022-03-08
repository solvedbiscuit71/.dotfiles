-- packer ( Note: you need to install packer.nvim first )
-- use: git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

return require('packer').startup(function()
  -- packer
  use 'wbthomason/packer.nvim'

  -- colorscheme
  use 'lifepillar/vim-gruvbox8'
  use 'chrisbra/Colorizer'
  use 'nvim-lualine/lualine.nvim'
  use 'kyazdani42/nvim-tree.lua'

  -- icon
  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-web-devicons'

  -- operator
  use 'tpope/vim-repeat'
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'vim-scripts/ReplaceWithRegister'

  -- git
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'

  -- textObj
  use 'kana/vim-textobj-user'
  use 'kana/vim-textobj-line'
  use 'kana/vim-textobj-indent'
  use 'kana/vim-textobj-entire'

  -- auto close
  use 'solvedbiscuit71/vim-autopair'

  -- lsp
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/nvim-cmp'
  use 'neovim/nvim-lspconfig'
  use 'onsails/lspkind-nvim'
  use 'mattn/emmet-vim'

  -- snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'ThePrimeagen/git-worktree.nvim'

  -- terminal
  use 'voldikss/vim-floaterm'

  -- vimwiki
  use 'vimwiki/vimwiki'
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'}
end)
