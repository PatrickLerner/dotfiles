let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_map = '<leader>t'
autocmd BufWritePost * :CtrlPClearCache
