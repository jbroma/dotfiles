"Vim-Plug Plugin list starts here
call plug#begin('~/.vim/plugins')

"Autocomplete 
Plug 'Valloric/YouCompleteMe'
"Syntax checker
Plug 'vim-syntastic/syntastic'
"Powerline (airline)
Plug 'vim-airline/vim-airline'
"Powerline themes
Plug 'vim-airline/vim-airline-themes'
"Language packs
Plug 'sheerun/vim-polyglot'
"Python proper autoindent
Plug 'vim-scripts/indentpython.vim'
"Python flake8
Plug 'nvie/vim-flake8'
"Tex
Plug 'lervag/vimtex'
"nnn file tree
Plug 'mcchrish/nnn.vim'

call plug#end()
"Plugin list ends here

"Number lines
set nu
set background=dark
set encoding=utf-8

"Syntax highlighting
syntax on
"Custom highlight groups
highlight BadWhitespace ctermbg=red guibg=darkred

"Defines how splitting window will work
set splitbelow
set splitright

"Unified clipboard
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
set clipboard=unnamedplus

"Flag Unnecessary Whitespace in given filetypes
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.cpp,*.hpp match BadWhitespace /\s\+$/

"***Language specific settings***
"Python indentation
au BufNewFile,BufRead *.py
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set textwidth=79 |
	\ set expandtab |
	\ set autoindent |
	\ set fileformat=unix

"YAML indentation
au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
"Map <leader> to Space
let mapleader="\<Space>"

"YouCompleteMe Config
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_collect_identifiers_from_tags_files=1
let g:use_ultisnips_completer=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_complete_in_comments=1
let g:ycm_complete_in_strings=1

"Vimtex Config
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

"Disable vim-polyglot for latex
let g:polyglot_disabled = ['latex']

"Nnn Config
let g:nnn#layout={ 'left': '~20%' }
let g:nnn#action={
	\ '<c-t>': 'tab-split',
	\ '<c-x>': 'split',
	\ '<c-v>': 'vsplit' }

" air-line
let g:airline_powerline_fonts=1
let g:airline_theme='term'
let g:airline#extensions#whitespace#enabled=0
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
