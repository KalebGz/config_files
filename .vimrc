syntax enable
set tabstop=4
set expandtab
set number
filetype indent on
set autoindent
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
" Add plugins here"
call vundle#end()
filetype plugin indent on
autocmd vimenter * NERDTree
"Open terminal below"
cabbrev bterm bo term
set termsize=10x0
