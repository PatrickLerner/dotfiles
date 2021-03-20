let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-css', 'coc-tsserver', 'coc-prettier', 'coc-cssmodules', 'coc-html', 'coc-rust-analyzer', 'coc-sh', 'coc-solargraph', 'coc-yaml', 'coc-svg', 'coc-toml', 'coc-swagger', 'coc-spell-checker']

nnoremap <silent> ]c :call CocAction('diagnosticNext')<CR>
nnoremap <silent> [c :call CocAction('diagnosticPrevious')<CR>

" for fixing current word
vmap <silent> ]f <Plug>(coc-codeaction-selected)aw<CR>
nmap <silent> ]f <Plug>(coc-codeaction-selected)aw<CR>

" fixing prefix
vmap <silent> ]a <Plug>(coc-codeaction-selected)
nmap <silent> ]a <Plug>(coc-codeaction-selected)
