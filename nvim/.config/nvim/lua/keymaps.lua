local map = require("utils").map

vim.g.mapleader = ' '

-- basics
map('n','<leader>b','<C-^>')
map('n','<leader>d',':bw<CR>')
map('n','<leader>q',':qa<CR>')
map('n','cd',':lcd %:h<CR>')

-- luatree & fugitive
map('n','<leader>g',':G<CR>')
map('n','<leader>n',':NvimTreeToggle<CR>')

-- telescope
map('n','<C-f>',':lua require("telescope.builtin").find_files({prompt_title = "<  >"})<CR>')
map('n','<leader>ff',':lua require("telescope.builtin").find_files({prompt_title = "<  >"})<CR>')
map('n','<leader>fn',':lua require("telescope.builtin").find_files({prompt_title = "< 漣>",cwd = "~/.config/nvim",})<CR>')
map('n','<leader>fw',':lua require("telescope").extensions.git_worktree.git_worktrees()<CR>')

-- terimal
map('n','<leader>`',':FloatermToggle<CR>')
map('t','<Esc>','<C-\\><C-n>:FloatermToggle<CR>')
map('t','<C-t>','<C-\\><C-n>:FloatermNew<CR>')
map('t','<C-h>','<C-\\><C-n>:FloatermNext<CR>')
map('t','<C-l>','<C-\\><C-n>:FloatermPrev<CR>')

-- markdown preview
map('n','<leader>mp',':MarkdownPreviewToggle<CR>')

-- jump list
map('n','k','(v:count > 5 ? "m\'" . v:count : "") . \'k\'',{ expr = true })
map('n','j','(v:count > 5 ? "m\'" . v:count : "") . \'j\'',{ expr = true })
