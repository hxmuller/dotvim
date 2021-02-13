" File ~/.vim/after/ftplugin/css.vim
" css specific settings

"Only do this when not done yet for this buffer
if exists("b:did_local_ftplugin")
	finish
endif
let b:did_local_ftplugin = 1

" Set local indent options for buffer
setlocal smartindent
setlocal shiftwidth=2

" Script autocommands
augroup htmlGroup
  " Clear autocommands for this group
  autocmd!

  " Delete trailing whitespace when writing file
  autocmd BufWritePre <buffer> %s/\s\+$//e
augroup END

"Undo everything done above
function! s:undo()
	setlocal smartindent<
	setlocal shiftwidth<
endfunction
let b:undo_local_ftplugin = "call s:undo()"
