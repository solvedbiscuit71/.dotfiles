local create_augroups = require("utils").nvim_create_augroups

local autocmds = {
  rm_space = {
    { 'BufWritePre','*',':%s/\\s\\+$//e' },
  };

  reload_snippets = {
    { 'BufWritePost','*.snippets',':CmpUltisnipsReloadSnippets' },
  };

  set_compiler = {
    { 'BufEnter','*.cpp',':compiler clang' },
    { 'BufEnter','*.ts',':compiler tsc' },
  };

  set_spell = {
    { 'BufEnter','*.md',':setlocal spell spelllang=en_us' },
  };

  set_comment_str = {
    { 'BufEnter','*.cpp',':setlocal commentstring=//\\ %s' },
  };

  set_execute = {
    { 'BufEnter','*','nnoremap <leader>x :echo "Set a Execute command in autocmd.vim"<CR>' },
    { 'BufEnter','*.cpp','nnoremap <leader>x :FloatermNew ./%:t:r.out<CR>' },
    { 'BufEnter','*.ts','nnoremap <leader>x :FloatermNew ts-node %<CR>' },
    { 'BufEnter','*.js','nnoremap <leader>x :FloatermNew node %<CR>' },
    { 'BufEnter','*.py','nnoremap <leader>x : FloatermNew python3 %<CR>' },
    { 'BufEnter','*.wiki','nnoremap <leader>x :!~/.config/nvim/wiki2pdf/wiki2pdf % ~/Documents/Notes/Add_to/%:t:r.pdf<CR>' },
  };
}

create_augroups(autocmds);
