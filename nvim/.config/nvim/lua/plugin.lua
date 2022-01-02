local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- Plugin Manager
  use 'wbthomason/packer.nvim'

  -- Theme and Looks
  use 'morhetz/gruvbox'
  use 'goolord/alpha-nvim'
  use 'kyazdani42/nvim-tree.lua'
  use 'akinsho/bufferline.nvim'
  use { 'glepnir/galaxyline.nvim', branch = 'main' }
  use 'kyazdani42/nvim-web-devicons'

  -- Opertors
  use 'tpope/vim-repeat'
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'vim-scripts/ReplaceWithRegister'
  use 'alvan/vim-closetag'

  -- Custom Text-Object
  use 'kana/vim-textobj-user'
  use 'kana/vim-textobj-line'
  use 'kana/vim-textobj-indent'

  -- Git
  use 'lewis6991/gitsigns.nvim'
  use 'tpope/vim-fugitive'
  use 'rbong/vim-flog'

  -- Git-Worktree
  use 'ThePrimeagen/git-worktree.nvim'

  -- LanguageServer
  use 'neovim/nvim-lspconfig'

  -- SyntaxHighlight
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- FuzzyFind
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'

  -- AutoCompletion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'onsails/lspkind-nvim'

  -- Snippets
  use 'SirVer/ultisnips'
  use 'quangnguyen30192/cmp-nvim-ultisnips'

  -- Harpoon
  use 'ThePrimeagen/harpoon'

  -- Terminal
  use 'voldikss/vim-floaterm'

  -- Documentation
  use 'vimwiki/vimwiki'
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'}

  -- Practice!!
  use 'ThePrimeagen/vim-be-good'

  -- Automatically set up your configuration after cloning packer.nvim
  if packer_bootstrap then
    require('packer').sync()
  end
end)