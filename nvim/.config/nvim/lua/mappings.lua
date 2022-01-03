-- Importing map()
local map = require("utils").map

-- set leader = <SPC>
vim.g.mapleader = ' '

-- general
map('n','<leader>i',':set hls!<CR>')
map('n','<leader>I',':set ic!<CR>')
map('n','<leader>b','<C-^>')
map('n','<leader>mk',':make<CR>')
map('n','<leader>%',':source<CR>')
map('n','<leader>o',':!open %<CR><CR>')
map('n','<leader>n',':NvimTreeToggle<CR>')
map('n','<leader>q',':q<CR>')
map('n','<leader>ww',':w<CR>')
map('n','<leader>wq',':wq<CR>')
map('n','<leader>e',':wincmd q<CR>')
map('n','<leader>d',':bw<CR>')
map('n','<leader>t',':tabnew<CR>:lcd ~/Code<CR>:Alpha<CR>')
map('n','<leader>c',':tabclose<CR>')
map('n','<leader>`',':FloatermToggle<CR>')

-- motion
map('v','<C-j>',":m '>+1<CR>gv=gv")
map('v','<C-k>',":m '<-2<CR>gv=gv")
map('n','<C-j>',':m .+1<CR>==')
map('n','<C-k>',':m .-2<CR>==')
map('n','cd',':lcd %:p:h<CR>')
map('n',']c',':cnext<CR>')
map('n','[c',':cprev<CR>')
map('n','<C-l>',':BufferLineCycleNext<CR>')
map('n','<C-h>',':BufferLineCyclePrev<CR>')

-- git
map('n','<leader>gs',':G<CR>')
map('n','<leader>gc',':G commit<CR>')
map('n','<leader>gp',':G push<CR>')
map('n','<leader>gl',':Flog<CR>')
map('n','<leader>gu',':G restore % <bar> :e!<CR>')
map('n','<leader>gf',':diffget //2<CR>')
map('n','<leader>gj',':diffget //3<CR>')
map('n','<leader>gd',':G branch -d ',{ silent = false })
map('n','<leader>gi',':G rebase -i HEAD',{ silent = false })
map('n','<leader>ga',':G worktree add ../',{ silent = false })
map('n','<leader>gr',':G worktree remove ../',{ silent = false })
map('n','<leader>gw','<cmd>lua require("telescope").extensions.git_worktree.git_worktrees()<CR>')

-- telescope
map('n','<leader>ff','<cmd>lua require("telescope.builtin").find_files({prompt_title = "< CWD >"})<CR>')
map('n','<leader>fg','<cmd>lua require("telescope.builtin").git_files({prompt_title = "< GIT >",})<CR>')
map('n','<leader>fn','<cmd>lua require("telescope.builtin").find_files({prompt_title = "< VIM >",cwd = "~/.config/nvim",})<CR>')
map('n','<leader>fw','<cmd>lua require("telescope.builtin").live_grep({prompt_title = "< GREP >"})<CR>')

-- harpoon
map('n','<leader>u','<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>')
map('n','<leader>a','<cmd>lua require("harpoon.mark").add_file()<CR>')
map('n','<leader>j','<cmd>lua require("harpoon.ui").nav_file(1)<CR>')
map('n','<leader>k','<cmd>lua require("harpoon.ui").nav_file(2)<CR>')
map('n','<leader>l','<cmd>lua require("harpoon.ui").nav_file(3)<CR>')

-- floaterm
map('t','<Esc>','<C-\\><C-n>:FloatermToggle<CR>')
map('t','<C-t>','<C-\\><C-n>:FloatermNew<CR>')
map('t','<C-n>','<C-\\><C-n>:FloatermNext<CR>')
map('t','<C-p>','<C-\\><C-n>:FloatermPrev<CR>')
map('t','<C-e>','<C-\\><C-n>:FloatermKill<CR>')

-- preview
map('n','<leader>mp',':MarkdownPreviewToggle<CR>')

