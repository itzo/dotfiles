" Enable syntax highlighting
syntax enable

" Show line numbers in dim colors
set number
highlight LineNr ctermfg=black ctermbg=NONE

" Set tabs to have 4 spaces
set tabstop=4
set softtabstop=4

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
