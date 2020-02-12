" =============================================
" customization
" =============================================
syntax enable

set ruler       " to see the cursor position
set ttyfast     " fast terminal connection 
set title 
set number 
set hidden
set path=$PWD/**

" no backups
set nobackup
set nowritebackup
set noswapfile
set undodir=~/temp//
" keep histories for undo
set undolevels=1000

set hlsearch
set ignorecase
set smartcase
set incsearch

filetype plugin on
filetype indent  on

set secure " so that we do not run what we do not own. Though I still do not completely comprehend the implications of this.

" tabs set expandtab set tabstop=4
set shiftwidth=2 
set tabstop=2
set expandtab
set softtabstop=2
set autoindent
set smartindent

" show hidden chars, and other whitespaces
set list
set listchars=tab:→\ ,trail:·,nbsp:·

" =============================================
" Plugin installation
" =============================================
let doIHaveVundle=1
let v_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(v_readme)
  echo "Installing Vundle..."
  echo "" 
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let doIHaveVundle=0
endif
set runtimepath+=~/.vim/bundle/vundle
call vundle#rc()

Plugin 'VundleVim/Vundle.vim' 
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary' 
Plugin 'tpope/vim-sensible'
Plugin 'mattn/emmet-vim'
" find more plugins

if doIHaveVundle == 0
  echo "Installing bundles..." 
  echo ""
  :BundleInstall
endif

" =============================================
" keybinding
" =============================================
" remap escape 
inoremap jk <Esc>

let mapleader=" "

nnoremap <leader><leader> :nohl<cr>:ls<cr>
nnoremap <leader>w :w!<cr>
nnoremap <leader>q :q<cr>
" to format the file.
nnoremap <leader>f mzgg=G'z  

