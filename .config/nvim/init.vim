set nocompatible
filetype off

packadd minpac

call minpac#init()

call minpac#add('k-takata/minpac', {'type': 'opt'})

" automatically close end
call minpac#add('tpope/vim-endwise')

" Colors
call minpac#add('arcticicestudio/nord-vim')

" ctrl p for quick navigation
call minpac#add('kien/ctrlp.vim')

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

" start screen
call minpac#add('mhinz/vim-startify')

" file manager changes
call minpac#add('tpope/vim-vinegar')

" some unix file operations on current file
call minpac#add('tpope/vim-eunuch')

" lightline
call minpac#add('itchyny/lightline.vim')
call minpac#add('maximbaz/lightline-ale')

filetype plugin indent on
