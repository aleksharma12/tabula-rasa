" FEATURES
" wards off unexpected things and sanely reset options while re-sourcing
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" All the packages
call vundle#begin()
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Search for files
Plugin 'kien/ctrlp.vim'

" Syntax Highlighting
Plugin 'scrooloose/syntastic'

" Pesky whitespace solution
Plugin 'ntpeters/vim-better-whitespace'

call vundle#end()

" determine the type of file based on name and (maybe) contents
" adds auto-indenting for filetypes/plugins
filetype plugin indent on

" syntax highlighting, duh
syntax on

" color scheme and background
set background=dark
colorscheme solarized

" MUST-HAVE OPTIONS
" re-use same window and switch from unsaved window without saving first
" keeps undo history for multiple files when re-using same window
set hidden

" better command-line completion
set wildmenu

" show partial commands in the last line of the screen
set showcmd

" highlight searches
set hlsearch

" USABILITY OPTIONS
" use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" allow backspacing over autoindent, linebreaks and start of insert action
set backspace=indent,eol,start

" maintain same indent as current line when opening new line
set autoindent

" adds a horizontal line beneath current line
set cursorline

" adds column at some char limit
set colorcolumn=99

" prevent certain movements from always going to start of line
set nostartofline

" display cursor position on last line of screen or status line
set ruler

" always display status line, even if only one window is displayed
set laststatus=2

" raise dialogue asking about saving changed files instead of failing command
" due to unsaved changes
set confirm

" use visual bell instead of beeping when doing something wrong
set visualbell

" reset terminal code for visual bell
set t_vb=

" enable mouse for all modes
set mouse=a

" set command window height to 2 lines
set cmdheight=2

" display line numbers on the left
set number

" quickly time out on keycodes, but never on mappings
set notimeout ttimeout ttimeoutlen=200

" use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" INDENTATION OPTIONS
" use 4 spaces instead of tabs
set shiftwidth=4
set softtabstop=4
set expandtab

" use hard tabs for indent and display tabs as 4 chars wide
set tabstop=4

" MAPPINGS
" map Y to act like D and C, i.e. to yank until EOL, rather than default yy
map Y y$

" map <C-L> (redraw screen) to also turn off search highlighting until next
" search
nnoremap <C-L> :nohl<CR><C-L>

" set tags file
set tags="./.git/tags ."

" SYNTASTIC SETTINGS
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
