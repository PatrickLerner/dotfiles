if has("autocmd")
  augroup templates
    autocmd BufNewFile *.sh 0r ~/.config/nvim/templates/skeleton.sh
    autocmd BufNewFile *spec/*.rb 0r ~/.config/nvim/templates/skeleton.spec.rb | normal Gddgg
    autocmd BufNewFile *.jsx 0r ~/.config/nvim/templates/skeleton.jsx | normal Gddgg
  augroup END
endif
