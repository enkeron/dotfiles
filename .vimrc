" General
" =======
set encoding=UTF-8 	" Encoding
set termencoding=utf-8
set laststatus=2 " Always show statusline
set autoread " Reload files changed outside vim
set clipboard=unnamed " Use system clipboard
set showcmd " Display unfinished commands
set ruler " Show cursor position in status bar
set hidden " Buffers can exist in the background
set showmatch " Briefly jump to matching bracket
set matchtime=2 " Time match is shown in 0.1s
" path, filetype, modified flag, readonly flag, buffer num, line pos, percentage
set statusline=%<%F\ %y%r%m\ %3*%n%*%=%l,%-5.0c\ \%p%%
set wildmenu

" System
" ======
set nobackup
set nowb
set noswapfile
set showmatch
"set showcmd
set smarttab
set nocompatible
" Syntax
" ======
syntax on " Syntax highlighting

" View
" ====
set guifont=monaco\ 10
colorscheme wombat256mod
"colorscheme elflord
set background=dark
set novisualbell
set nu
" Search
" ======
set ignorecase " Case insensitive search
set incsearch " Jump to result while typing
set hls " Highlight results

" History, Undo
" ============
"set history=1000 " :help history
"set noswapfile " Don't use swap files
"set undofile " Keeps undo history after save/close

" Indentation, Whitespace, Linewrapping
" =====================================
"set expandtab " Inserts spaces instead of tabs
set autoindent " Autoindent new lines
set smartindent " More syntax aware autoindent
set tabstop=4 " One tab = 4 spaces, see :help tabstop
set shiftwidth=4 " Number of spaces for autoindent

" Test
" ====
set wrap " Linewrapping
let &showbreak='+++ ' " String to indicate wrapped line
set cpoptions+=n " Show above string between line numbers
set splitright
set splitbelow
set ttyfast
set lazyredraw
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
