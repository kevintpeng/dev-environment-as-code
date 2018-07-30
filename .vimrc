"""""""""""""""Vundle setup""""""""""""""""""""""""""""
let base16colorspace=256
set nocompatible    " be iMproved, required for Vundle
filetype off        " required for Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-sensible'

call vundle#end()   " required
"""""""""""""""Vundle setup end"""""""""""""""""""""""
syntax on
colorscheme base16-default-dark

set number
set incsearch
set hlsearch

command! WQ wq
command! Wq wq
command! W w
command! Q q

" backspace modifications, to enable deletion wrapping
set backspace=indent,eol,start

