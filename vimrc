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

" turn on spell checking for markdown files
autocmd BufRead,BufNewFile *.md setlocal spell

" turn on spell checking for git commit messages
autocmd FileType gitcommit setlocal spell

" Testing to see what this does
"set complete+=kspell

" Plugin Specific Settings
" =====================================================================

" pydiction
" ---------
let g:pydiction_location = '~/.vim/pack/vendor/opt/pydiction/complete-dict'


