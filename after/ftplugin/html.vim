" File ~/.vim/after/ftplugin/html.vim
" html specific settings

" Only do this when not done yet for this buffer
if exists("b:did_local_ftplugin")
	finish
endif
let b:did_local_ftplugin = 1

" Prevent markdown files from processing html settings
if &ft == "markdown"
	finish
endif

" Set local indent options for buffer
setlocal smartindent
setlocal shiftwidth=2

" TODO: figure out why the last command does not leave
"         in APPEND mode.
" If this is an empty html file populate it with skeleton
if line('$') == 1 && getline(1) == ''
  0r ~/.vim/templates/skeleton.html
  normal 4jwf>a
endif

" Script autocommands
augroup htmlGroup
  " Clear autocommands for this group
  autocmd!

  " Delete trailing whitespace when writing file
  autocmd BufWritePre <buffer> %s/\s\+$//e
augroup END

" Undo everything done above
function! s:undo()
	setlocal smartindent<
	setlocal shiftwidth<
endfunction
let b:undo_local_ftplugin = "call s:undo()"



