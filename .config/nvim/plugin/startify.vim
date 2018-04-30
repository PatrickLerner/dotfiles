let g:startify_custom_header = [
  \ '        =[ ｈｏｒｔｈｙ ]='
  \ ]

function! s:list_projects()
  let projects = systemlist('find ~/Projects/Instaffo -name ".git" | sed "s/\/.git//"')
  return projects
endfunction

let g:startify_bookmarks = [ {'c': '~/.config/nvim'}, {'z': '~/.zshrc'} ] + s:list_projects()

let g:startify_lists = [
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks'] },
      \ ]