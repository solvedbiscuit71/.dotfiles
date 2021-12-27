" Remove Trailing Spaces
augroup SPACE
    autocmd!
    autocmd BufWritePre * :%s/\s\+$//e
augroup END

" Transparent BG
augroup BG
    autocmd!
    autocmd VimEnter * :highlight Normal ctermbg=NONE guibg=NONE
augroup END

" Setting compiler
augroup COMPILER
    autocmd!
    autocmd BufEnter *.cpp :compiler clang
    autocmd BufEnter *.ts :compiler tsc
augroup END

" Setting SpellChecker
augroup SPELL
    autocmd!
    autocmd BufEnter *.md,*.wiki :setlocal spell spelllang=en_us
augroup END

" Commentary
augroup COMMENT
    autocmd!
    autocmd BufEnter *.cpp :setlocal commentstring=//\ %s
augroup END

" UltiSnips
augroup SNIP
    autocmd!
    autocmd BufWritePost *.snippets :CmpUltisnipsReloadSnippets
augroup END

" VimWiki
augroup WIKI
    autocmd!
    autocmd BufEnter * nnoremap <leader>o :!open %<CR><CR>
    autocmd BufEnter *.wiki nnoremap <leader>o :Vimwiki2HTMLBrowse<CR>
augroup END

" Setting execute/export
augroup  EXE
    autocmd!
    autocmd BufEnter * nnoremap <leader>x :echo "Set a Execute command in autocmd.vim"<CR>
    autocmd BufEnter *.cpp nnoremap <leader>x :FloatermNew ./%:t:r.out<CR>
    autocmd BufEnter *.ts nnoremap <leader>x :FloatermNew ts-node %<CR>
    autocmd BufEnter *.js nnoremap <leader>x :FloatermNew node %<CR>
    autocmd BufEnter *.wiki nnoremap <leader>x :!~/.config/nvim/wiki2pdf/wiki2pdf % ~/Documents/Notes/Add_to/%:t:r.pdf<CR>
augroup END
