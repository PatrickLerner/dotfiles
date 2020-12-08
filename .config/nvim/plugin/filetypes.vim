autocmd FileType * setlocal shiftwidth=2 tabstop=2 expandtab smarttab et autoindent
" autocmd BufWrite * setlocal shiftwidth=2 tabstop=2 expandtab smarttab et autoindent
autocmd FileType crontab setlocal nobackup nowritebackup

au! BufNewFile,BufReadPost *.rs set filetype=rust foldmethod=indent
autocmd FileType rust setlocal shiftwidth=4 tabstop=4 softtabstop=4

" add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

autocmd FileType make setlocal ts=2 sts=2 sw=2 noexpandtab
