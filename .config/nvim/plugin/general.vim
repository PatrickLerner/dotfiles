set encoding=utf-8

set backspace=indent,eol,start " allow backspacing over everything in insert mode

set history=1000	" keep 1000 lines of command line history
set ruler	" show the cursor position all the time
set showcmd " display incomplete commands
set complete-=i
set showmatch
set nowrap
set backupdir=~/.tmp
set directory=~/.tmp    " Don't clutter my dirs up with swp and tmp files
set autoread
set et                  " convert tabs to spaces
set smarttab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set noincsearch
set cursorline
set relativenumber

set ignorecase smartcase
set laststatus=2        " Always show status line.
set number
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

" vim should use system keyboard
" set clipboard=unnamed

" remove useless whitespaces
autocmd BufWritePre * %s/\s\+$//e

set showbreak=↪\
set listchars=tab:→\ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set list!

" automatically enter insert mode on new terminals
autocmd TermOpen * startinsert

" prevent accidentally saving files in a typo with ':w/' or similar
:autocmd BufWritePre [:;\\']*
\   try | echoerr 'Forbidden file name: ' . expand('<afile>') | endtry

" global undo directory that is persisted after file closure
set undodir=~/.vim/undodir
set undofile

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

set wildignore+=.DS_Store
set wildignore+=.git/
set wildignore+=node_modules/
set mouse=
