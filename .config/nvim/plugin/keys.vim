map Q <Nop>
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" replace current selection with buffer when pressing r
" while it is highlighted
vmap r "_dP"

"make < > shifts keep selection
vnoremap < <gv
vnoremap > >gv

" use tab for indentation
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" use escape to leave terminal mode
tnoremap <Esc> <C-\><C-n>

" remap ; to act like :
nnoremap ; :
nnoremap : <Nop>

" use leader + a for searching
nnoremap <leader>a :Ack

" clear highlights with leader + space
nnoremap <leader><space> :nohlsearch<CR>

" ale navigation
nnoremap <silent> <C-N> :ALENextWrap<CR>
nnoremap <silent> <S-C-N> :ALEPreviousWrap<CR>

" use system keyboard if used with leader key
nnoremap <Leader>y "+y
nnoremap <Leader>d "+d
vnoremap <Leader>y "+y
vnoremap <Leader>d "+d
nnoremap <Leader>p :set paste<CR>"+p:set nopaste<CR>
nnoremap <Leader>P :set paste<CR>"+P:set nopaste<CR>
vnoremap <Leader>p :set paste<CR>"+p:set nopaste<CR>
vnoremap <Leader>P :set paste<CR>"+P:set nopaste<CR>

" map capital commands to lower case
command WQ wq
command Wq wq
command W w
command Q q
command E e
