command! MakeTags !/usr/local/bin/ctags -R --exclude=.git --exclude=log --exclude tmp --exclude=.docker --exclude=public .

" put current file path into clipboard
nnoremap <leader>c :let @+ = expand("%:p")<cr>:echo "Copied file path to clipboard"<cr>

" quickly save file
nnoremap <leader>w :w<cr>
