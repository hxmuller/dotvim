" File ~/.vim/after/ftplugin/python.vim
" python specific settings

" Only do this when not done yet for this buffer
if exists("b:did_local_ftplugin")
	finish
endif
let b:did_local_ftplugin = 1

" ftplugin specific stuff here
setlocal smartindent
packadd pydiction

" Undo everything done above
function! s:undo()
	setl [option]<
endfunction
let b:undo_local_ftplugin .= "call s:undo()"

