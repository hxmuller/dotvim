" File ~/.vim/after/ftplugin/[file].vim
" [filetype] specific settings

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
	finish
endif
let b:did_ftplugin = 1

" ftplugin specific stuff here

" Undo everything done above
function! s:undo()
	setl [option]<
endfunction
let b:undo_ftplugin .= "call s:undo()"
