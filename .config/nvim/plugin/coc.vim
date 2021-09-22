" disable coc snippet overwriting useful keys like <C-R> for their nonesense
let g:coc_selectmode_mapping = 0
let g:coc_global_extensions = ['coc-json', 'coc-css', 'coc-tsserver', 'coc-cssmodules', 'coc-html', 'coc-rust-analyzer', 'coc-sh', 'coc-solargraph', 'coc-yaml', 'coc-svg', 'coc-toml', 'coc-swagger', 'coc-spell-checker', 'coc-eslint', 'coc-snippets']

nnoremap <silent> ]c :call CocAction('diagnosticNext')<CR>
nnoremap <silent> [c :call CocAction('diagnosticPrevious')<CR>

" for fixing current word
vmap <silent> ]f <Plug>(coc-codeaction-selected)aw<CR>
nmap <silent> ]f <Plug>(coc-codeaction-selected)aw<CR>

" fixing prefix
vmap <silent> ]a <Plug>(coc-codeaction-selected)
nmap <silent> ]a <Plug>(coc-codeaction-selected)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" symbol rename
nmap <leader>rn <Plug>(coc-rename)
