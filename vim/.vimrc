" Settings
filetype plugin on
set background=dark
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
set shiftwidth=4
set tabstop=4
set termguicolors
set timeoutlen=1000 ttimeoutlen=0
set wildmenu
syntax on

let g:netrw_keepdir = 0
let g:netrw_winsize = 18 
let g:netrw_banner = 0
let g:vimwiki_list = [{'path': '~/Documents/.vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
let g:lightline = { 'colorscheme': 'apprentice' }

" Plugin
call plug#begin('~/.vim/plugged')
    " ColorScheme
    Plug 'lifepillar/vim-gruvbox8'
    Plug 'itchyny/lightline.vim'
    Plug 'ryanoasis/vim-devicons'

    " Opertor
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'

    " TextObject
    Plug 'vim-scripts/ReplaceWithRegister'
    Plug 'kana/vim-textobj-user'
    Plug 'kana/vim-textobj-line'
    Plug 'kana/vim-textobj-indent'
    Plug 'kana/vim-textobj-entire'

    " Documentation
    Plug 'vimwiki/vimwiki'
call plug#end()

" Set ColorScheme
colorscheme gruvbox8_hard

" Set Mappings
let g:mapleader = ' '

nnoremap <silent> <leader>n :Lexplore %:p:h<CR>:wincmd h<CR>
nnoremap <silent> <leader>fn :e ~/.vimrc<CR>

nnoremap <silent> <leader>q :qa<CR>
nnoremap <silent> <leader>d :bd<CR>
nnoremap <silent> <leader>e :wincmd q<CR>
nnoremap <silent> <leader>c :tabclose<CR>
nnoremap <silent> <leader>t :tabnew<CR>

nnoremap <silent> <leader>b <C-^>
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-l> :wincmd l<CR>

nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'
