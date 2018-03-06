set nocompatible " Required by vundle
filetype off     " Required by vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins

" automatically close end
Plugin 'tpope/vim-endwise'

" Colors
Plugin 'nanotech/jellybeans.vim'

" command t for quick navigation
Plugin 'wincent/command-t'

" syntax check
Plugin 'vim-syntastic/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()                " required
filetype plugin indent on        " required

syntax on                        " Enable syntax highlighting
colorscheme jellybeans
set backspace=indent,eol,start   " allow backspacing over everything in insert mode

set history=500		" keep 500 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set showmatch
set nowrap
set backupdir=~/.tmp
set directory=~/.tmp    " Don't clutter my dirs up with swp and tmp files
set autoread
set et                  " convert tabs to spaces
set sw=2
set smarttab
set noincsearch
set ignorecase smartcase
set laststatus=2        " Always show status line.
set relativenumber
set number
set gdefault            " assume the /g flag on :s substitutions to replace all matches in a line
set autoindent          " always set autoindenting on
set lazyredraw          " Don't redraw screen when running macros.
set eol

" command t options
set wildignore+=*/node_modules/*     " Don't search inside Node.js modules
set wildignore+=*/tmp/*
set wildignore+=*/public/*

" syntastic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_ruby_checkers = ['rubocop']
