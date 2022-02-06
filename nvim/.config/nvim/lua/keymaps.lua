local map = require("utils").map

vim.g.mapleader = ' '

-- basics
map('n','<C-j>','<C-^>')
map('n','cd',':lcd %:h<CR>')

-- bufferline
map('n','<C-l>',':BufferLineCycleNext<CR>')
map('n','<C-h>',':BufferLineCyclePrev<CR>')

-- luatree
map('n','<C-n>',':NvimTreeToggle<CR>')
map('n','<leader>nn',':NvimTreeToggle<CR>')
map('n','<leader>nf',':NvimTreeFindFileToggle<CR>')

-- fugitive
map('n','<C-g>',':G<CR>')
map('n','<leader>gg',':G<CR>')
map('n','<leader>gl',':G log --oneline<CR>')
map('n','<leader>gp',':G push<CR>')

-- telescope
map('n','<C-f>',':lua require("telescope.builtin").find_files({prompt_title = "<  >"})<CR>')
map('n','<leader>ff',':lua require("telescope.builtin").find_files({prompt_title = "<  >"})<CR>')
map('n','<leader>fn',':lua require("telescope.builtin").find_files({prompt_title = "< 漣>",cwd = "~/.config/nvim",})<CR>')
map('n','<leader>fw',':lua require("telescope").extensions.git_worktree.git_worktrees()<CR>')

-- terimal
map('n','<C-k>',':FloatermToggle<CR>')
map('t','<C-k>','<C-\\><C-n>:FloatermToggle<CR>')
map('t','<C-t>','<C-\\><C-n>:FloatermNew<CR>')
map('t','<C-h>','<C-\\><C-n>:FloatermNext<CR>')
map('t','<C-l>','<C-\\><C-n>:FloatermPrev<CR>')

-- markdown preview
map('n','<leader>mp',':MarkdownPreviewToggle<CR>')

-- jump list
map('n','k','(v:count > 5 ? "m\'" . v:count : "") . \'k\'',{ expr = true })
map('n','j','(v:count > 5 ? "m\'" . v:count : "") . \'j\'',{ expr = true })
