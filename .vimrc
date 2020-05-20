" Plugins setup
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'google/vim-jsonnet'
" use hashtag instead of slash for comments
let g:jsonnet_fmt_on_save = 0
let g:jsonnet_fmt_options = '--comment-style h'
Plugin 'hashivim/vim-terraform'
" terraform plugin to run terraform fmt
let g:terraform_fmt_on_save=1
" all plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Other configs
" enable syntax highlighting
syntax enable

" show line numbers in dim colors
"set number
"highlight LineNr ctermfg=black ctermbg=NONE

" set tabs to have 4 spaces
set tabstop=4
set softtabstop=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show the matching part of the pair for [] {} and ()
set showmatch

" set file format to unix to prevent copy/paste issues
set fileformat=unix

" set encoding to UTF-8
set encoding=utf-8

" enable all Python syntax highlighting features
let python_highlight_all=1

" split screen navigation with ctrl+hljk
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" clear highlighting with ESC in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" use F12 to toggle paste on/off
set pastetoggle=<F12>

" set foldmethod to be able to fold (open/collapse) JSON for example
autocmd FileType json setlocal foldmethod=syntax
" set initial fold level (0 is all collapsed... 100 is all open)
set foldlevelstart=4

" set vimdiff color scheme
if &diff
    colorscheme industry
endif
