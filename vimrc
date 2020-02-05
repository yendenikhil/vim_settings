" -------------------------------------------------------------
"  vim customization
" -------------------------------------------------------------

" files to ignore
" python
set wildignore+=*.pyc,*.pyo,*/__pycache__/*
" temp
set wildignore+=*.swp,~*

syntax enable           " enable syntax processing
set backspace=indent,eol,start
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:.
" set clipboard=unnamedplus
set history=500

set tabstop=2           " space tab
set expandtab           " use spaces for tabs
set softtabstop=2       " space tab
set shiftwidth=2
set modelines=1

filetype plugin indent on

set autoindent          " Set the indent as of previous line
" set smartindent         " Try to guess indent of next line 

set path+=** " set the path to current directory and all subdirectory. Useful for find. 

set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase
set infercase 

set scrolloff=5         " number of lines to keep above cursor
" set cursorline        " highlight current line
set wildmenu
set lazyredraw
set showmatch           " higlight matching parenthesis
" set fillchars+=vert:┃
set ttyfast     " to make the fast tty connection and redraws
set title       " show title
set number      " show line numbers
set hidden

set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
set foldlevelstart=10   " start with fold level of 1

set noswapfile          " Do not create swap file. Manage this in version control 
set nobackup            " Do not create backup file again manage in version control
set undodir=~/temp//    " setup the undodir at central place
set undolevels=1000

let mapleader=" "
" space space shortcut
nnoremap <leader><space> :nohl<cr>:pc<cr>
" saving
nnoremap <leader>w :w!<cr>
"  quit the file
nnoremap <leader>q :q<cr>
" escaping the inset mode
inoremap jk <Esc>
inoremap kj <Esc>
" reindent whole file (the good way)
" Thanks to AlexDeLarge for sharing this awesome way to reintend
nnoremap <leader>f mzgg=G`z
" open file in new tab
nnoremap <leader>t :tabe<space>
" tab previous and tab next 
nnoremap <leader>j :tabn<cr>
nnoremap <leader>k :tabp<cr>

" toggle relative and absolute numbering.
nnoremap <F8> :set relativenumber!<cr>
" toggle whitespace chars
nnoremap <F7> :set list!<cr>
" open vimrc to edit
nnoremap <leader>vc :e ~/.vimrc<cr>

" autocomplete the common things.
inoremap (<cr> (<cr>)<esc>ko
inoremap {<cr> {<cr>}<esc>ko
inoremap [<cr> [<cr>]<esc>ko
inoremap () ()
inoremap [] []
inoremap {} {}
inoremap '' ''
inoremap "" ""
inoremap `` ``
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap ` ``<Esc>i

" open vimrc to edit
nnoremap <leader>vc :e ~/.vimrc<cr>

" autocomplete the common things.
inoremap (<cr> (<cr>)<esc>ko
inoremap {<cr> {<cr>}<esc>ko
inoremap [<cr> [<cr>]<esc>ko
inoremap () ()
inoremap [] []
inoremap {} {}
inoremap '' ''
inoremap "" ""
inoremap `` ``
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap ` ``<Esc>i

" augroup numbertoggle 
"   autocmd! 
"   autocmd VimEnter,InsertLeave * set relativenumber 
"   autocmd InsertEnter * set norelativenumber 
" augroup END
augroup customfiletype 
  autocmd!
  autocmd BufNewFile,BufRead *.ejs set filetype=html
augroup END
augroup customfiletype 
  autocmd!
  " reload vimrc file on save. 
  autocmd BufWritePost .vimrc source %
augroup END

