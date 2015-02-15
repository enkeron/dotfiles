set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
"Plugin core
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'

" togglable panels
Plugin 'scrooloose/nerdtree'

" vim plugins
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'


call vundle#end()            " required
filetype plugin indent on    " required


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
"set guifont=monaco\ 10
"colorscheme wombat256mod
"colorscheme elflord
set background=dark
set novisualbell
set relativenumber
set nu
set cursorline
set ttyfast
set noshowmode

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
set expandtab " Inserts spaces instead of tabs
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

set t_Co=256
"colorscheme wombat256mod
colorscheme candyman 



"-----------------------------------------------------------------------------
" CtrlP Settings
"-----------------------------------------------------------------------------
let g:ctrlp_switch_buffer = 'E'
let g:ctrlp_tabpage_position = 'c'
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_root_markers = ['.project.root']
"let g:ctrlp_custom_ignore = '\v'
"let g:ctrlp_custom_ignore .= '%(/\.'
"let g:ctrlp_custom_ignore .= '%(git|hg|svn)|'
"let g:ctrlp_custom_ignore .= '\.%(rar|class|o|png|jpg|jpeg|bmp|tar|jar|tgz|deb|zip|html)$|'
"let g:ctrlp_custom_ignore .= '/project/target|/project/project'
"let g:ctrlp_custom_ignore .= ')'
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_open_multiple_files = '1ri'
let g:ctrlp_match_window = 'max:40'
"let g:ctrlp_prompt_mappings = {
"\ 'PrtSelectMove("j")': ['<c-n>'],
"\ 'PrtSelectMove("k")': ['<c-p>'],
"\ 'PrtHistory(-1)': ['<c-j>', '<down>'],
"\ 'PrtHistory(1)': ['<c-i>', '<up>']
"\ }
nmap ,fb :CtrlPBuffer<cr>
nmap ,ff :CtrlP .<cr>
nmap ,fF :execute ":CtrlP " . expand('%:p:h')<cr>
nmap ,fr :CtrlP<cr>
nmap ,fm :CtrlPMixed<cr>




"Togle NERDTree
map <C-n> :NERDTreeToggle<CR>

let g:airline_theme="powerlineish"
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#fnamecollapse = 1 " /a/m/model.rb
"let g:airline#tabline#enabled = 1
"let g:airline_symbols
"let g:airline_theme='powerlineish'
let g:Powerline_symbols = 'fancy'
"let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
