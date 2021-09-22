let g:prettier#exec_cmd_path = "/Users/patrick/.config/yarn/global/node_modules/.bin/prettier"

fun! PrettierRun()
    " Don't prttier on these filetypes
    if &ft =~ 'helm'
        return
    endif
    PrettierAsync()
endfun

" run before save
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.less,*.json,*.graphql,*.md,*.vue,*.html,*.scss,*.css,*.yaml,*.yml call PrettierRun()
