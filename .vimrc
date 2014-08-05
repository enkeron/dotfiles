" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set guifont=monaco\ 10
"set linespace 1
syntax on
"colorscheme git
colorscheme desert 
"Автооступы
:set autoindent
set nocompatible
"Не создавать резервные копии файлов
set nobackup
set nowb
" Отключить swap файлы
set noswapfile
:imap <C-Del> <C-O>
:imap <C-BS> <C-W>
"Вставка номерации строк
set nu
" Поиск по набору текста (очень полезная функция)
set incsearch
" Выключаем надоедливый звонок
set novisualbell
set t_vb=

" Меню выбора кодировки текста (utf8, cp1251, koi8-r, cp866)
menu Кодировка.utf-8 :e ++enc=utf8 <CR>
menu Кодировка.windows-1251 :e ++enc=cp1251<CR>
menu Кодировка.koi8-r :e ++enc=koi8-r<CR>
menu Кодировка.cp866 :e ++enc=cp866<CR>

" Список используемых кодировок для автоматического их определения
set fileencodings=utf-8,cp1251		
set iskeyword=@,a-z,A-Z,48-57,_,128-175,192-255

" Включаем фолдинг (сворачивание участков кода)
"set foldenable
" Сворачивание по отступам
"set fdm=indent
" Автоматическое открытие сверток при заходе в них
" set foldopen=all				
	
