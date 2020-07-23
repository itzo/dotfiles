" Plugins setup
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" jsonnet
Plugin 'google/vim-jsonnet'
" Use hashtag instead of slash for comments
let g:jsonnet_fmt_on_save = 0
let g:jsonnet_fmt_options = '--comment-style h'

" terraform
Plugin 'hashivim/vim-terraform'
" Terraform plugin to run terraform fmt
let g:terraform_fmt_on_save=1

" markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



" Show column numbers
set ruler

" Enable syntax highlighting
syntax enable

" Show line numbers in dim colors
"set number
"highlight LineNr ctermfg=black ctermbg=NONE

" Set tabs to have 4 spaces
set tabstop=2
set softtabstop=2

" Indent when moving to the next line while writing code
set autoindent

" Expand tabs into spaces
set expandtab

" When using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" Show the matching part of the pair for [] {} and ()
set showmatch

" Set file format to unix to prevent copy/paste issues
set fileformat=unix

" Set encoding to UTF-8
set encoding=utf-8

" Enable all Python syntax highlighting features
let python_highlight_all=1

" Split screen navigation with ctrl+hljk
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Clear highlighting with ESC in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" Use F12 to toggle paste on/off
set pastetoggle=<F12>

" Set foldmethod to be able to fold (open/collapse) JSON for example
" use zR to expand all folds
autocmd FileType json setlocal foldmethod=syntax
" Set initial fold level (0 is all collapsed... 100 is all open)
set foldlevelstart=4

" Set vimdiff color scheme
if &diff
    colorscheme industry
endif
