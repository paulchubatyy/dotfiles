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
set nocompatible

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
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" My specific settings
set ruler
set history=50
set tabstop=4
set shiftwidth=4
set expandtab
set nu
set lbr
set autoindent
set wrap
set textwidth=72

" Bracket autocompetition
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}


inoremap        [  []<Left>
inoremap <expr> ]  strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"


inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

" Color scheme
colorscheme xobb


" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" PHP specific settings
" highlights interpolated variables in sql strings and does sql-syntax highlighting. yay
autocmd FileType php let php_sql_query=1
" does exactly that. highlights html inside of php strings
autocmd FileType php let php_htmlInStrings=1
" discourages use oh short tags. c'mon its deprecated remember
autocmd FileType php let php_noShortTags=1
" automagically folds functions & methods. this is getting IDE-like isn't it?
autocmd FileType php let php_folding=1

" set "make" command when editing php files
set makeprg=php\ -l\ %
set errorformat=%m\ in\ %f\ on\ line\ %l

" set auto-highlighting of matching brackets for php only
autocmd FileType php DoMatchParen
autocmd FileType php hi MatchParen ctermbg=blue guibg=lightblue

" autocomplete funcs and identifiers for languages
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

" auto switch to folder where editing file
autocmd BufEnter * cd %:p:h
