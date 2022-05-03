local map = require("utils").map

vim.g.mapleader = ' '

-- basics
map('n','cd',':lcd %:h<CR>')
map('n','<C-d>',':bd<CR>')
map('n','<C-c>',':tabclose<CR>')

map('n','<C-b>','<C-^>')

-- luatree
map('n','<C-n>',':NvimTreeOpen<CR>')
map('n','<leader>nn',':NvimTreeOpen<CR>')
map('n','<leader>nf',':NvimTreeFindFile<CR>')

-- luasnips ( for auto-completion & snippets )
-- NOTE: for emment-vim use '<C-y>n'
map('i','<C-j>','<ESC>:lua require("luasnip").expand_or_jump()<CR>')
map('s','<C-j>','<ESC>:lua require("luasnip").expand_or_jump()<CR>')

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
map('n','<C-\\>',':FloatermToggle<CR>')
map('t','<C-\\>','<C-\\><C-n>:FloatermToggle<CR>')
map('t','<Esc>','<C-\\><C-n>')
map('t','<C-t>','<C-\\><C-n>:FloatermNew<CR>')
map('t','<C-c>','<C-\\><C-n>:FloatermKill<CR>')
map('t','<C-h>','<C-\\><C-n>:FloatermNext<CR>')
map('t','<C-l>','<C-\\><C-n>:FloatermPrev<CR>')

-- color code toggle
map('n','<leader>ct',':ColorToggle<CR>')

-- markdown preview
map('n','<leader>mp',':MarkdownPreviewToggle<CR>')

-- jump list
map('n','k','(v:count > 5 ? "m\'" . v:count : "") . \'k\'',{ expr = true })
map('n','j','(v:count > 5 ? "m\'" . v:count : "") . \'j\'',{ expr = true })
