" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" let g:ctrlp_map = '<leader>t'
" let g:ctrlp_cmd = 'CtrlPMixed'
" let g:ctrlp_working_path_mode = 'ra'
" let g:ctrlp_mruf_relative = 1
" let g:ctrlp_match_window = 'bottom,order:ttb' " order top to bottom
" let g:ctrlp_switch_buffer = 0 " always open in new buffer
" let g:ctrlp_working_path = 0 " respect directory changes

" autocmd BufWritePost * :CtrlPClearCache

" Persist cache on disk
" let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

" Use ag for scanning
" if executable('ag')
"  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" endif

nnoremap <leader>t <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
