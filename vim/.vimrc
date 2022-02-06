" Vim-Setting
syntax on
set background=dark
set backspace=indent,eol,start
set cursorline
set expandtab
set hidden
set incsearch
set laststatus=2
set nocompatible
set nohls
set noshowmode
set noswapfile
set number relativenumber
set scrolloff=5
set smartindent
set smarttab
set shiftwidth=2
set tabstop=2
set termguicolors
set timeoutlen=1000 ttimeoutlen=0
set wildmenu

" Vim-Plug-Setting
let g:lightline = { 'colorscheme': 'apprentice' }
let g:NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden=1

" Vim-Plug
call plug#begin('~/.vim/plugged')
  Plug 'itchyny/lightline.vim'

  Plug 'kana/vim-textobj-entire'
  Plug 'kana/vim-textobj-indent'
  Plug 'kana/vim-textobj-line'
  Plug 'kana/vim-textobj-user'

  Plug 'preservim/nerdtree'

  Plug 'lifepillar/vim-gruvbox8'
  Plug 'ryanoasis/vim-devicons'
  Plug 'solvedbiscuit71/vim-autopair'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
call plug#end()

" Vim-colorscheme
colorscheme gruvbox8_hard

" Vim-Keymaps
let g:mapleader = ' '

nnoremap <silent> <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <C-j> <C-^>
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'
