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
Plugin 'Xuyuanp/nerdtree-git-plugin'

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

"""""NerdTree Config""""""
" auto-start nerd tree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" auto-open nerd tree when opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

map <C-n> :NERDTreeToggle<CR>
