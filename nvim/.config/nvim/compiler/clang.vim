if exists("current_compiler")
    finish
endif
let current_compiler = "cpp"

if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=clang++\ -g\ %\ -o\ %:p:h/a.out
