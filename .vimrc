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

" markdown editing
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'davepagurek/markdown-preview.vim'
Plugin 'drmingdrmer/vim-syntax-markdown'

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

" Markdown preview config

" Only refresh preview on save (default is every edit, jumps around too much for my liking
let g:mkdp_refresh_on_save = 1

" Use Safari for preview (feel free to change to Chrome)
let g:mkdp_path_to_chrome = "open -a Safari"

" Use <Leader>mm to launch preview, <Leader>mn to close
nmap <silent> <Leader>mm <Plug>MarkdownPreview
nmap <silent> <Leader>mn <Plug>StopMarkdownPreview

" Enable MathJax
let g:vim_markdown_math = 1
