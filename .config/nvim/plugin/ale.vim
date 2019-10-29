let g:ale_open_list = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_linters = {
\  'ruby': ['rubocop'],
\  'haskell': ['ghc', 'hlint'],
\  'javascript': ['eslint'],
\  'javascriptreact': ['eslint'],
\}

let g:ale_sign_error = "!"
let g:ale_sign_warning = "?"
let g:lightline#ale#indicator_checking = ''
let g:lightline#ale#indicator_ok = ''

highlight link ALEErrorSign    Error
highlight link ALEWarningSign  Warning
