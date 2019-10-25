"Vim-Plug Plugin list starts here
call plug#begin('~/.vim/plugins')

"Autocomplete 
Plug 'Valloric/YouCompleteMe'
"Syntax checker
Plug 'vim-syntastic/syntastic'
"Python proper autoindent
Plug 'vim-scripts/indentpython.vim'
"Python flake8
Plug 'nvie/vim-flake8'

call plug#end()
"Plugin list ends here

"Number lines
set nu
set background=dark
set encoding=utf-8

"Custom highlight groups
highlight BadWhitespace ctermbg=red guibg=darkred

"Defines how splitting window will work
set splitbelow
set splitright

"Flag Unnecessary Whitespace
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h,*.cpp,*.hpp match BadWhitespace /\s\+$/

"***Language specific settings***
"Python indentation
au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:use_ultisnips_completer=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_complete_in_comments=1
let g:ycm_complete_in_strings=1
