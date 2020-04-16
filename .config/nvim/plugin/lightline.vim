let g:lightline = {
  \ 'colorscheme': 'nord',
  \ 'component_function': {
  \   'filename': 'LightlineFilename',
  \ }
  \ }

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

let g:lightline.component_type = {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }

let g:lightline.active = {
      \     'right': [
      \         [ 'lineinfo' ],
      \         [ 'percent' ],
      \         [ 'fileformat', 'fileencoding', 'filetype' ],
      \         [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ]
      \     ]
      \ }

function! LightlineFilename()
  let path = expand('%:p')
  let fn = expand('%:t')
  let dir = expand('%:p:h:h')

  if fn =~ '^index' || fn =~ '^mod.rs' || fn =~ '^tests.rs'
    " also display folder name
    return path[len(dir)+1:]
  end

  return fn
endfunction
