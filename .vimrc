" Dont show vim start message
set shortmess=atI

" Fileencoding
set fileencoding=utf8

" Paste as you would expect
set paste

" Editor colorscheme
colorscheme elflord

" Enable line numbers
set number

" Enable syntax highlighting
syntax on

" Highlight searches
set hlsearch

" Ignore case of searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Show the (partial) command as it’s being typed
set showcmd

" Make tabs as wide as 4 spaces
set tabstop=4

" Set how many spaces the reindent is (<< and >>)
set shiftwidth=4

" Make sure we use tabs and not spacing for indention
set noexpandtab

" Automatic indention of code (smartindet might be to intrusive)
set autoindent
"set smartindent

" Enhance command-line completion
set wildmenu

" Highlight matchin parenthis/brackes
set showmatch

" Show the cursor position
set ruler

" Show the filename in the window titlebar
set title

" Correct me when i type Wq instead of wq
ab Wq wq

" Dont highlight the cursorline
highlight CursorLine cterm=NONE

" Highlight whitespace
highlight WhitespaceEOL ctermbg=red guibg=red
autocmd BufRead,BufNew * match WhitespaceEOL /\s\+$/

" Remove all whitespace on save
" * is a wildcard for all files, but it can also be a list: php,js,css
autocmd FileType * autocmd BufWritePre <buffer> :%s/\s\+$//e
