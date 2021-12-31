" ======================
" setting <leader>
" ======================

let g:mapleader = ' '

" ================================
" modified vim keybindding
" ================================

" nnoremap Y y$ (Since, it's make default in nvim 0.6)
" nnoremap gf :edit <cfile><CR> (As it's not working well)
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

" ================================
" moving lines (similar to VSCode)
" ================================

nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" ================================
" searching
" ================================

nnoremap <leader>i :set hls!<CR>
nnoremap <leader>I :set ic!<CR>

" ================================
" editing
" ================================

nnoremap <silent> <leader>n :Ex<CR>
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>ww :w<CR>
nnoremap <silent> <leader>wq :wq<CR>
nnoremap <silent> <leader>e :wincmd q<CR>
nnoremap <silent> <leader>d :bw<CR>

nnoremap <leader>b <C-^>
" Since,<leader>mp -> MarkdownPreviewToggle
nnoremap <leader>mm :make<CR>
nnoremap <leader>% :source %<CR>

nnoremap <silent> <leader>t :tabnew<CR>:Ex ~<CR>
nnoremap <silent> <leader>c :tabclose<CR>
nnoremap <silent> cd :lcd %:p:h<CR>

nnoremap <silent> ]c :cnext<CR>
nnoremap <silent> [c :cprev<CR>

" ================================
" bufferline
" ================================

nnoremap <silent> ]b :BufferLineCycleNext<CR>
nnoremap <silent> [b :BufferLineCyclePrev<CR>

" ================================
" lsp
" ================================

" Check: lua/lsp-config.lua

" ================================
" git
" ================================

nnoremap <leader>gs :G<CR>
nnoremap <leader>gc :G commit<CR>
nnoremap <leader>gp :G push<CR>
nnoremap <leader>gl :Flog<CR>
nnoremap <leader>gu :G restore % <bar> :e!<CR>
nnoremap <leader>gf :diffget //2<CR>
nnoremap <leader>gj :diffget //3<CR>
nnoremap <leader>gw <cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>
nnoremap <leader>ga :G worktree add ../
nnoremap <leader>gr :G worktree remove ../
nnoremap <leader>gd :G branch -d
nnoremap <leader>gi :G rebase -i HEAD

" ================================
" gitsigns
" ================================

" Check: lua/gitsigns-config.lua

" ================================
" telescope
" ================================

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files({prompt_title = "< CWD >"})<CR>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').git_files({prompt_title = "< GIT >",})<CR>
nnoremap <leader>fn <cmd>lua require('telescope.builtin').find_files({prompt_title = "< VIM >",cwd = "~/.config/nvim",})<CR>
nnoremap <leader>fw <cmd>lua require('telescope.builtin').live_grep({prompt_title = "< GREP >"})<CR>

" ================================
" harpoon
" ================================

nnoremap <leader>u <cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <leader>a <cmd>lua require("harpoon.mark").add_file()<CR>
nnoremap <leader>j <cmd>lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <leader>k <cmd>lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <leader>l <cmd>lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <leader>; <cmd>lua require("harpoon.ui").nav_file(4)<CR>

" ================================
" terminal
" ================================

tnoremap <silent> <Esc> <C-\><C-n>:FloatermToggle<CR>
tnoremap   <silent> <C-t> <C-\><C-n>:FloatermNew<CR>
tnoremap   <silent> <C-n> <C-\><C-n>:FloatermNext<CR>
tnoremap   <silent> <C-p> <C-\><C-n>:FloatermPrev<CR>
tnoremap   <silent> <C-e> <C-\><C-n>:FloatermKill<CR>
nnoremap <silent> <leader>` :FloatermToggle<CR>

" ================================
" markdown Preview
" ================================

nnoremap <leader>mp :MarkdownPreviewToggle<CR>

" Removed Debugger Configuration After (101a02e)
