" enable syntax highlighting
syntax enable

" show line numbers in dim colors
set number
highlight LineNr ctermfg=black ctermbg=NONE

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
