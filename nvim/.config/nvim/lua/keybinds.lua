-- Importing map()
local map = require("utils").map

-- set leader = <SPC>
vim.g.mapleader = ' '

-- mutating jumplist
map('n','k','(v:count > 5 ? "m\'" . v:count : "") . \'k\'',{ expr = true })
map('n','j','(v:count > 5 ? "m\'" . v:count : "") . \'j\'',{ expr = true })

-- general
map('n','<leader>n',':NvimTreeToggle<CR>')

map('n','<leader>q',':qa<CR>')
map('n','<leader>e',':wincmd q<CR>')
map('n','<leader>d',':bw<CR>')
map('n','<leader>t',':tabnew<CR>')
map('n','<leader>c',':tabclose<CR>')

map('n','<leader>b','<C-^>')
map('n','<leader>`',':FloatermToggle<CR>')

map('n','cd',':lcd %:p:h<CR>')
map('n','<C-l>',':BufferLineCycleNext<CR>')
map('n','<C-h>',':BufferLineCyclePrev<CR>')

map('i','<C-j>','<ESC>:lua require("luasnip").expand_or_jump()<CR>')
map('s','<C-j>','<ESC>:lua require("luasnip").expand_or_jump()<CR>')

-- git
map('n','<leader>gs',':G<CR>')
map('n','<leader>gu',':G restore %<CR>')
map('n','<leader>gl',':G log --oneline --graph<CR>')
map('n','<leader>gp',':G push<CR>')

map('n','<leader>ga',':G worktree add ../',{ silent = false })
map('n','<leader>gr',':G worktree remove ../',{ silent = false })
map('n','<leader>gd',':G branch -d ',{ silent = false })
map('n','<leader>gw',':lua require("telescope").extensions.git_worktree.git_worktrees()<CR>')

-- telescope
map('n','<leader>ff',':lua require("telescope.builtin").find_files({prompt_title = "<  >"})<CR>')
map('n','<leader>fn',':lua require("telescope.builtin").find_files({prompt_title = "< 漣>",cwd = "~/.config/nvim",})<CR>')

-- floaterm
map('t','<C-\\>','<C-\\><C-n>')
map('t','<Esc>','<C-\\><C-n>:FloatermToggle<CR>')
map('t','<C-t>','<C-\\><C-n>:FloatermNew<CR>')
map('t','<C-n>','<C-\\><C-n>:FloatermNext<CR>')
map('t','<C-p>','<C-\\><C-n>:FloatermPrev<CR>')
map('t','<C-e>','<C-\\><C-n>:FloatermKill<CR>')

-- harpoon
map('n','<leader>a',':lua require("harpoon.mark").add_file()<CR>')
map('n','<leader>s',':lua require("harpoon.ui").toggle_quick_menu()<CR>')
map('n','<leader>j',':lua require("harpoon.ui").nav_file(1)<CR>')
map('n','<leader>k',':lua require("harpoon.ui").nav_file(2)<CR>')
map('n','<leader>l',':lua require("harpoon.ui").nav_file(3)<CR>')
map('n','<leader>;',':lua require("harpoon.ui").nav_file(4)<CR>')

-- preview
map('n','<leader>mp',':MarkdownPreviewToggle<CR>')
