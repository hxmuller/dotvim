" File ~/.vim/ftplugin/markdown.vim
" Markdown specific settings

" Only do this when not done yet for this buffer
if exists("b:did_local_ftplugin")
	finish
endif
let b:did_local_ftplugin = 1

" turn on spell checking for markdown files
setlocal spell

" Disable live preview or it treats markdown like html
autocmd! BufWritePost <buffer>

" Undo everything done above
function! s:undo()
	setlocal spell<
endfunction
let b:undo_local_ftplugin = "call s:undo()"

