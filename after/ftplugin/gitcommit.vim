" File ~/.vim/ftplugin/gitcommit.vim
" gitcommit specific settings

" Only do this when not done yet for this buffer
if exists("b:did_local_ftplugin")
	finish
endif
let b:did_local_ftplugin = 1

" turn on spell checking for git commit messages
setlocal spell

" Undo everything done above
function! s:undo()
	setlocal spell<
endfunction
let b:undo_local_ftplugin = "call s:undo()"
