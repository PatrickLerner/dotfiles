let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_map = '<leader>t'
let g:ctrlp_cmd = 'CtrlPMixed'
autocmd BufWritePost * :CtrlPClearCache

" Persist cache on disk
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

" Use ag for scanning
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
