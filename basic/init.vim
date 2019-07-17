"---------------------
"Show line number
"---------------------
set number

"---------------------
"Line Hilighting
"---------------------
set cursorline

"---------------------
"Encoding
"---------------------
set enc=utf-8
set fenc=utf-8

"---------------------
"Enabling syntax highlighting 
"---------------------
syntax enable

highlight Normal ctermbg=none 

"---------------------
"Indentation settings
"---------------------
set autoindent
set ts=2
set expandtab

augroup vimrc
	autocmd! FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
	autocmd! FileType pug setlocal shiftwidth=2 tabstop=2 softtabstop=2
	autocmd! FileType css  setlocal shiftwidth=4 tabstop=2 softtabstop=2
	autocmd! FileType scss  setlocal shiftwidth=4 tabstop=2 softtabstop=2
	autocmd! FileType js setlocal shiftwidth=2 tabstop=2 softtabstop=2
	autocmd! FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4
  au BufRead,BufNewFile *.md set filetype=markdown "Syntax highlighting for markdown file
  autocmd FileType vue syntax sync fromstart
augroup END

"---------------------
"Disabling beep
"---------------------
set visualbell t_vb=
set noerrorbells

"---------------------
"Statusline
"---------------------
set laststatus=2

"---------------------
"Signcolumn
"---------------------
set scl=yes

"---------------------
"Set split directions
"---------------------
set splitright
set splitbelow

set backspace=indent,eol,start
set clipboard=unnamed

set t_ut=
set t_Co=256

set hls
set nocp

" set wildmenu
" set wildmode=longest:full,full

set autochdir
set tags=./tags;

set noswapfile
set nobackup
set noundofile

" setlocal omnifunc=syntaxcomplete#Complete
" autocmd FileType typescript setlocal completeopt-=menu

