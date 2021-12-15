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

nnoremap <leader>n :Ex<CR>
nnoremap <leader>q :q!<CR>
nnoremap <leader>ww :w<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>e :wincmd q<CR>
nnoremap <leader>d :bw<CR>

nnoremap <leader>b <C-^>
nnoremap <leader>m :make<CR>
nnoremap <leader>% :lcd %:p:h<CR>

nnoremap <silent> ]q :cnext<CR>
nnoremap <silent> [q :cprev<CR>

" ================================
" lsp
" ================================

nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> R <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> H <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> gh <cmd>lua vim.lsp.buf.code_action()<CR>

" ================================
" git
" ================================

nnoremap <leader>gs :G<CR>
nnoremap <leader>gc :G commit<CR>
nnoremap <leader>gp :G push<CR>
nnoremap <leader>gl :G log --oneline --graph<CR>
nnoremap <leader>gu :G restore % <bar> :e!<CR>
nnoremap <leader>gf :diffget //2<CR>
nnoremap <leader>gj :diffget //3<CR>
nnoremap <leader>fw <cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>
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

tnoremap <Esc> <C-\><C-n>
nnoremap <leader>t :tabnew <bar> :ter<CR>

" ================================
" markdown Preview
" ================================

nnoremap <leader>mp :MarkdownPreviewToggle<CR>

" ================================
" debugger
" ================================

nnoremap <leader>yy :call vimspector#Launch()<CR>
nnoremap <leader>yq :call vimspector#Reset()<CR>
nnoremap <leader>yr :call vimspector#Restart()<CR>

nnoremap <leader><space> :call vimspector#StepOver()<CR>
nnoremap <leader>yl :call vimspector#StepInto()<CR>
nnoremap <leader>yh :call vimspector#StepOut()<CR>
nnoremap <leader>yc :call vimspector#Continue()<CR>
nnoremap <leader>. :call vimspector#ToggleBreakpoint()<CR>
nnoremap <leader>yj :call vimspector#UpFrame()<CR>
nnoremap <leader>yk :call vimspector#DownFrame()<CR>
