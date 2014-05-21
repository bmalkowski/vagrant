set nocompatible
filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'gmarik/Vundle.vim'
Bundle 'altercation/vim-colors-solarized'
call vundle#end()

" Settings
filetype plugin indent on
set number
syntax enable
set background=dark
colorscheme solarized
