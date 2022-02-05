local create_autocmds = require("utils").nvim_create_autocmds

local autocmds = {
  enable_spell = {
    { 'BufEnter','*.md',':setlocal spell spelllang=en_us' },
  },

  set_compile_keybind = {
    { 'BufEnter','*','nnoremap <leader>mk :echo "Set a Compiler command in autocmds.lua"<CR>' },
    { 'BufEnter','*.ts','nnoremap <silent> <buffer> <leader>mk :e<CR>:!tsc % --target es6<CR><CR>' },
  },

  set_execute_keybind = {
    { 'BufEnter','*','nnoremap <leader>x :echo "Set a Execute command in autocmds.lua"<CR>' },
    { 'BufEnter','*.html','nnoremap <silent> <buffer> <leader>x :!open %<CR>' },
    { 'BufEnter','*.js','nnoremap <silent> <buffer> <leader>x :FloatermNew node %<CR>' },
    { 'BufEnter','*.ts','nnoremap <silent> <buffer> <leader>x :FloatermNew ts-node %<CR>' },
  }
}

create_autocmds(autocmds);
