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
Plugin 'rakr/vim-one'

" command t for quick navigation
Plugin 'wincent/command-t'

" syntax check
Plugin 'w0rp/ale'

" All of your Plugins must be added before the following line
call vundle#end()                " required
filetype plugin indent on        " required

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (has("nvim"))
"For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

syntax on                        " Enable syntax highlighting
colorscheme one
set background=dark
set t_ut=

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

" reset search highlighting by pressing return
" nnoremap <silent> <esc> :noh<return><esc>
" nnoremap <esc>^[ <esc>^[

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

set encoding=utf-8

" command t options
set wildmenu
set wildmode=longest:full,full
set wildignore+=*/node_modules/*     " Don't search inside Node.js modules
set wildignore+=*/tmp/*
set wildignore+=*/public/*

" vim should use system keyboard
set clipboard=unnamed

command! MakeTags !/usr/local/bin/ctags -R --exclude=.git --exclude=log --exclude tmp --exclude=.docker --exclude=public .
map Q <Nop>
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" ale
let g:ale_open_list = 1
let g:ale_lint_on_text_changed = 'never'

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" natural split behavior
set splitbelow
set splitright

set directory=~/.vim/tmp
set backupdir=~/.vim/backups
