set encoding=utf-8

set backspace=indent,eol,start   " allow backspacing over everything in insert mode

set history=1000	" keep 1000 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set complete-=i
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
set number
set relativenumber
set gdefault            " assume the /g flag on :s substitutions to replace all matches in a line
set autoindent          " always set autoindenting on
set lazyredraw          " Don't redraw screen when running macros.
set eol
set wrap
set linebreak
set nolist              " list disables linebreak
set hls is

" natural split behavior
set splitbelow
set splitright

set directory=~/.vim/tmp
set backupdir=~/.vim/backups

" vim should use system keyboard
set clipboard=unnamed

" remove useless whitespaces
autocmd BufWritePre * %s/\s\+$//e
