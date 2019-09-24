nmap <Leader>f <Plug>(PrettierAsync)

" run before save
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.less,*.json,*.graphql,*.md,*.vue,*.yaml,*.html,*.scss,*.css PrettierAsync

" *.scss,*.css
