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
vmap r "_dPnnoremap <C-H> <C-W><C-H>

"make < > shifts keep selection
vnoremap < <gv
vnoremap > >gv

" use tab for indentation
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
