" This file is located in $HOME/.vim/vimrc as recommended by
" :help vimrc (also found by :help start)
"
" Additionally, a symbolic link ~/.vimrc is created pointing to
" ~/.vim/vimrc because it is looked for there first.

" Recommended in :help vimrc-intro
source $VIMRUNTIME/defaults.vim

" General Settings
" =====================================================================

" filetype plugin is used by netrw and pydiction
filetype plugin on

" search down into subfolders, provides tab-completion for all
" file-related tasks
set path+=**

" Plugin Specific Settings
" =====================================================================

" pydiction
" ---------
let g:pydiction_location = '/home/hmuller/.vim/pack/vendor/opt/pydiction/complete-dict'


