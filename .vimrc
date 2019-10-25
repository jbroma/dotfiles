set nu
set background=dark
set encoding=utf-8

"Defines how splitting window will work
set splitbelow
set splitright

"Python indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

"Vim-Plug Plugin list starts here
call plug#begin('~/.vim/plugins')

"Autocomplete 
Plug 'Valloric/YouCompleteMe'

call plug#end()
"Plugin list ends here
