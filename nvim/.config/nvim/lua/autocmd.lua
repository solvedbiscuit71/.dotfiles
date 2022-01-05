-- Remove Trailing Spaces
vim.cmd[[
aug RemoveSpaces
  au!
  au BufWritePre * :%s/\s\+$//e
aug END
]]

-- Reloading Snippets after Editing
vim.cmd[[
aug ReloadSnippets
  au!
  au BufWritePost *.snippets :CmpUltisnipsReloadSnippets
aug END
]]

-- Set compiler
vim.cmd[[
aug SetCompiler
  au!
  au BufEnter *.cpp :compiler clang
  au BufEnter *.ts :compiler tsc
aug END
]]

-- Enable spell
vim.cmd[[
aug EnableSpell
  au!
  au BufEnter *.md :setlocal spell spelllang=en_us
aug END
]]

-- Set comment string
vim.cmd[[
aug SetCommets
  au!
  au BufEnter *.cpp :setlocal commentstring=//\ %s
aug END
]]

-- Set <leader>x
vim.cmd[[
aug ExecuteCommand
  au!
  au BufEnter * nnoremap <leader>x :echo "Set a Execute command in autocmd.vim"<CR>
  au BufEnter *.cpp nnoremap <leader>x :FloatermNew ./%:t:r.out<CR>
  au BufEnter *.ts nnoremap <leader>x :FloatermNew ts-node %<CR>
  au BufEnter *.js nnoremap <leader>x :FloatermNew node %<CR>
  au BufEnter *.py nnoremap <leader>x : FloatermNew python3 %<CR>
  au BufEnter *.wiki nnoremap <leader>x :!~/.config/nvim/wiki2pdf/wiki2pdf % ~/Documents/Notes/Add_to/%:t:r.pdf<CR>
aug END
]]
