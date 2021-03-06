" This file is located in $HOME/.vim/vimrc as recommended by
" :help vimrc (also found by :help start)
"
" Additionally, a symbolic link ~/.vimrc is created pointing to
" ~/.vim/vimrc because it is looked for there first.
"
" On Debian system, install vim-gtk vs vim-nox to get out of the
" box clipboard usage. vim-nox is not compiled with clipboard
" support.

" Recommended in :help vimrc-intro
source $VIMRUNTIME/defaults.vim

" General Settings
" =====================================================================

" filetype plugin is used by netrw and pydiction
filetype plugin on

" search down into subfolders, provides tab-completion for all
" file-related tasks
set path+=**

" display status line always
set laststatus=2

" Testing to see what this does
"set complete+=kspell

" Global autocommands
" =====================================================================
augroup localGroup
  " Clear autocommands everytime vimrc is (re)loaded.
  autocmd!
  
  " Set trailing whitespace highlighting for html,css, and javascript
  autocmd FileType html,css,javascript highlight ExtraWhitespace ctermbg=red guibg=red
  autocmd FileType html,css,javascript match ExtraWhitespace /\s\+$/
augroup END


" Plugin Specific Settings
" =====================================================================

" pydiction
" ---------
let g:pydiction_location = '~/.vim/pack/vendor/opt/pydiction/complete-dict'


