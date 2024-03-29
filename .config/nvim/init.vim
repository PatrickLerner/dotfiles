set nocompatible
filetype off

packadd minpac

call minpac#init()

call minpac#add('k-takata/minpac', {'type': 'opt'})

" automatically close end
call minpac#add('tpope/vim-endwise')

" sensible defaults
call minpac#add('tpope/vim-sensible')

" Colors
call minpac#add('arcticicestudio/nord-vim')
call minpac#add('sonph/onehalf', {'subdir': 'vim/'})
call minpac#add('arzg/vim-corvine')

" ctrl p for quick navigation
" call minpac#add('kien/ctrlp.vim')
call minpac#add('nvim-lua/plenary.nvim')
call minpac#add('nvim-telescope/telescope.nvim')

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
call minpac#add('shumphrey/fugitive-gitlab.vim')

" start screen
call minpac#add('mhinz/vim-startify')

" pencil
call minpac#add('preservim/vim-pencil')
call minpac#add('junegunn/goyo.vim')

" file manager changes
call minpac#add('tpope/vim-vinegar')

" some unix file operations on current file
call minpac#add('tpope/vim-eunuch')

" lightline
call minpac#add('itchyny/lightline.vim')
" call minpac#add('maximbaz/lightline-ale')

" Intellisense
call minpac#add('neoclide/coc.nvim')

call minpac#add('christoomey/vim-titlecase')

" Prettier
call minpac#add('prettier/vim-prettier', {'do': 'yarn install' })

" syntax check
call minpac#add('w0rp/ale')

call minpac#add('rust-lang/rust.vim')

call minpac#add('honza/vim-snippets')

call minpac#add('towolf/vim-helm')

call minpac#add('neoclide/jsonc.vim')

call minpac#add('hashivim/vim-terraform')

filetype plugin indent on
