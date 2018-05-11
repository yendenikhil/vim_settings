" set nocompatible        " not needed as picking up vimrc file itself makes
" it non compatible
" -------------------------------------------------------------
"  Setup Vundle plugins (make sure that the git clone has happened for Vundle
" -------------------------------------------------------------
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'vundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'mileszs/ack.vim' 

call vundle#end()
" -------------------------------------------------------------
"  vim customization
" -------------------------------------------------------------
syntax enable           " enable syntax processing
set backspace=indent,eol,start
set clipboard=unnamedplus
set history=500

set tabstop=2           " space tab
set expandtab           " use spaces for tabs
set softtabstop=2       " space tab
set shiftwidth=2
set modelines=1

filetype plugin indent on

set autoindent          " Set the indent as of previous line
" set smartindent         " Try to guess indent of next line 

set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase
set infercase 

set number              " show line numbers
set showcmd             " show command in bottom bar
set scrolloff=5         " number of lines to keep above cursor
" set cursorline        " highlight current line
set wildmenu
set lazyredraw
set showmatch           " higlight matching parenthesis
set fillchars+=vert:┃

set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
set foldlevelstart=10   " start with fold level of 1

let mapleader=" "
" space space shortcut
nnoremap <leader><space> :nohl<cr>
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

set noswapfile          " Do not create swap file. Manage this in version control 
set nobackup            " Do not create backup file again manage in version control
set undodir=~/temp//    " setup the undodir at central place

" Setting up the numbers to hybrid and when go to insert mode make it absolute
augroup numbertoggle 
  autocmd! 
  autocmd VimEnter,InsertLeave * set relativenumber 
  autocmd InsertEnter * set norelativenumber 
augroup END
augroup customfiletype 
  autocmd!
  autocmd BufNewFile,BufRead *.ejs set filetype=html
augroup END


" -------------------------------------------------------------
"  CtrlP configuration
" -------------------------------------------------------------
" open new file in ctrlP in new tab
let g:ctrlp_open_new_file = 't'

