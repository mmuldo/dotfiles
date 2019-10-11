syntax on
inoremap fd <Esc>
set laststatus=2
set clipboard=unnamedplus
let mapleader=" "
" " Copy to clipboard

vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" uncomment the line below if powerline installed with python3
" let g:powerline_pycmd = 'py3'

""""""""""""""""""""""""""""""""""""
"                                  "
"             VUNDLE               "
"                                  "
""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'arcticicestudio/nord-vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-repeat'
Plug 'fatih/vim-go'
Plug 'hashivim/vim-terraform'

" NERDTree
Plug 'scrooloose/nerdtree'

" Instant Markdown viewer
Plug 'suan/vim-instant-markdown'

" surround
Plug 'tpope/vim-surround'

" comment toggler
Plug 'scrooloose/nerdcommenter'

" Plug 'svermeulen/vim-easyclip'

" The following are examples of different formats supported.
" Keep Plug commands between vundle#begin/end.
" plugin on GitHub repo
"Plug 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plug 'L9'
" Git plugin not hosted on GitHub
"Plug 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plug 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plug 'ascenator/L9', {'name': 'newL9'}

" All of your Plugs must be added before the following line
call plug#end()            " required
"
" Brief help
" :PlugList       - lists configured plugins
" :PlugInstall    - installs plugins; append `!` to update or just :PlugUpdate
" :PlugSearch foo - searches for foo; append `!` to refresh local cache
" :PlugClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plug stuff after this line
let g:airline_powerline_fonts = 1

colorscheme nord
set number
set tabstop=4
set shiftwidth=4
set expandtab
" highlight search matches
set hlsearch

" toggle NERDTree
nnoremap <leader>0 :NERDTreeToggle<Cr>
vnoremap <leader>0 :NERDTreeToggle<Cr>
