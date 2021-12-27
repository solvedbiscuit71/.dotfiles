if exists("current_compiler")
    finish
endif
let current_compiler = "ts"

if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=tsc\ %\ --target\ es6\ --outFile\ ./%:t:r.js
