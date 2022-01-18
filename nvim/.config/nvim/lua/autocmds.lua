local create_augroups = require("utils").nvim_create_augroups

local autocmds = {
    enable_spell = {
        { 'BufEnter','*.md',':setlocal spell spelllang=en_us' },
    };

    set_comment_string = {
        { 'BufEnter','*.cpp',':setlocal commentstring=//\\ %s' },
    };

    set_compile_keybind = {
        { 'BufEnter','*','nnoremap <leader>mk :echo "Set a Compiler command in autocmds.lua"<CR>' },
        { 'BufEnter','*.cpp','nnoremap <leader>mk :e<CR>:!clang++ -g % -o %:p:h/a.out<CR><CR>' },
    };

    set_execute_keybind = {
        { 'BufEnter','*','nnoremap <leader>x :echo "Set a Execute command in autocmds.lua"<CR>' },
        { 'BufEnter','*.cpp','nnoremap <silent> <leader>x :FloatermNew %:p:h/a.out<CR>' },
    };
}

create_augroups(autocmds);
