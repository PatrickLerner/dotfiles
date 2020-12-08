nmap <Leader>f <Plug>(PrettierAsync)

let g:prettier#exec_cmd_path = "/Users/patrick/.config/yarn/global/node_modules/.bin/prettier"

" run before save
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.less,*.json,*.graphql,*.md,*.vue,*.yaml,*.yml,*.html,*.scss,*.css PrettierAsync
