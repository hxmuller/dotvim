# Personal dotvim Repository

This will not be of much interest to any other than my future self.

# Install dotvim onto new host

## Install

This assumes both vim and git are installed on new host.

    $ git clone git://github.com/hxmuller/dotvim.git ~/.vim

## Create symlink:

    $ ln -s ~/.vim/vimrc ~/.vimrc

## Switch to the ~/.vim directory, and fetch submodules:

    $ cd ~/.vim
    $ git submodule init
    $ git submodule update

