" put current file path into clipboard
nnoremap <leader>c :let @+ = expand("%:p")<cr>:echo "Copied file path to clipboard"<cr>

" quickly save file
nnoremap <leader>w :w<cr>

" change word under cursor to titlecase with ctc
nmap ctc viw<Plug>Titlecase
