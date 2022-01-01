"  ============================================================
"
"  █████  ██    ██ ████████  ██████   ██████ ███    ███ ██████
" ██   ██ ██    ██    ██    ██    ██ ██      ████  ████ ██   ██
" ███████ ██    ██    ██    ██    ██ ██      ██ ████ ██ ██   ██
" ██   ██ ██    ██    ██    ██    ██ ██      ██  ██  ██ ██   ██
" ██   ██  ██████     ██     ██████   ██████ ██      ██ ██████
"
" =============================================================

" BufWrite
aug RemoveSpaces
  au!
  au BufWritePre * :%s/\s\+$//e
aug END

aug ReloadSnippets
  au!
  au BufWritePost *.snippets :CmpUltisnipsReloadSnippets
aug END

" BufEnter
aug SetCompiler
  au!
  au BufEnter *.cpp :compiler clang
  au BufEnter *.ts :compiler tsc
aug END

aug EnableSpell
  au!
  au BufEnter *.md,*.wiki :setlocal spell spelllang=en_us
aug END

aug SetCommets
  au!
  au BufEnter *.cpp :setlocal commentstring=//\ %s
aug END

aug OpenCommand
  au!
  au BufEnter * nnoremap <leader>o :!open %<CR><CR>
  au BufEnter *.wiki nnoremap <leader>o :Vimwiki2HTMLBrowse<CR>
aug END

aug ExecuteCommand
  au!
  au BufEnter * nnoremap <leader>x :echo "Set a Execute command in autocmd.vim"<CR>
  au BufEnter *.cpp nnoremap <leader>x :FloatermNew ./%:t:r.out<CR>
  au BufEnter *.ts nnoremap <leader>x :FloatermNew ts-node %<CR>
  au BufEnter *.js nnoremap <leader>x :FloatermNew node %<CR>
  au BufEnter *.wiki nnoremap <leader>x :!~/.config/nvim/wiki2pdf/wiki2pdf % ~/Documents/Notes/Add_to/%:t:r.pdf<CR>
aug END
