" File ~/.vim/ftplugin/html.vim
" HTML specific settings

setlocal smartindent
setlocal shiftwidth=2

if line('$') == 1 && getline(1) == ''
  0r ~/.vim/templates/skeleton.html
  normal 4jwf>a
endif

