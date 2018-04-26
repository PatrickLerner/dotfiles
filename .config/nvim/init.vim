set nocompatible
filetype off

packadd minpac

call minpac#init()

call minpac#add('k-takata/minpac', {'type': 'opt'})

" automatically close end
call minpac#add('tpope/vim-endwise')

" Colors
call minpac#add('rakr/vim-one')

" command t for quick navigation
call minpac#add('wincent/command-t')

" syntax check
call minpac#add('w0rp/ale')

" automatically create folders if needed
call minpac#add('pbrisbin/vim-mkdir')

" quicker file search
call minpac#add('mileszs/ack.vim')

" vim gutter
call minpac#add('airblade/vim-gitgutter')

" surrounding brakets, quotes etc
call minpac#add('tpope/vim-surround')

" make surround repeatable
call minpac#add('tpope/vim-repeat')

" git plugin for blaming
call minpac#add('tpope/vim-fugitive')

filetype plugin indent on
