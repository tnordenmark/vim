" Set VI Improved mode
set nocompatible

" filetype off for Vundle 
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'bling/vim-airline'
" Plugin 'vim-scripts/bash-support.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" syntax hilighting
syntax on

" enable filetype plugin
filetype plugin indent on

" Map , as <leader> key
let mapleader = ","

" Airline settings
let g:airline_powerline_fonts=1

" Powerline settings
" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ Book\ 10
" set guifont=Inconsolata-dz\ 10
" set guifont=Dina\ 9
set guifont=Droid\ Sans\ Mono\ 10
set laststatus=2

" let g:Powerline_theme='short'
" let g:Powerline_colorscheme='solarized256_dark'

" Solarized settings
" let g:solarized_termcolors=256
" let g:solarized_visibility = "high"
" let g:solarized_contrast = "high"

" NERDTree settings
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

" bash-support settings
" let g:BASH_FormatDate='%F'
" let g:BASH_FormatTime='%T'
" let g:BASH_FormatYear='year %Y'

" Hilight characters past column 90 
augroup vimrc_autocmds
  autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
  autocmd BufEnter * match OverLength /\%90v.*/
augroup END

" Use 256 colors
set t_Co=256

" Disable left and right scrollbar and toolbar 
set guioptions-=L
set guioptions-=l
set guioptions-=R
set guioptions-=r
set guioptions-=T
set guioptions-=b

" Cursor for GUI
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" Make the command-line completion better
set wildmenu

" No backup files
set nobackup
set noswapfile

" Bells
set novisualbell
set noerrorbells

" Set terminal title
set title

" line numbers
set number

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Always show tab bar
set showtabline=2

" Don't wrap lines
set nowrap

" Automatically change window's cwd to file's dir
set autochdir

" Theme and background
" set background=dark
" colorscheme solarized
" colorscheme molokai
" let g:molokai_original=1
" To use a black background, let g:inkpot_black_background = 1et background=dark
colorscheme inkpot

" Show matching braces
set showmatch
set matchtime=3

" Automatically read a file that has changed on disk
set autoread

" Search behavior
set smartcase
set ignorecase
set hlsearch
set incsearch

" TAB character
set softtabstop=4
set shiftwidth=4
set expandtab

" Indentation
set autoindent
set smartindent

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" Code folding
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=1

" Restore view settings
set viewoptions=cursor,folds,slash,unix
" let g:skipview_files = ['*\.vim']

" View a list of buffers using F5
nnoremap <F5> :buffers<CR>:buffer<Space>

" Source .gvimrc
nmap <Leader>s :source $MYGVIMRC

" Open .gvimrc for editing
nmap <Leader>v :tabedit $MYGVIMRC

" Compile current C++ file (c++11)
nmap <F8> :w % <bar> :!g++ -W -Wall -Wextra -pedantic -std=c++11 % -o %:t:r<CR> <bar> :!./%:t:r<CR>

" Compile current C++ file (c++98)
nmap <F9> :w % <bar> :!g++ -W -Wall -Wextra -pedantic -ansi -std=c++98 % -o %:t:r<CR> <bar> :!./%:t:r<CR>

" Toggle pastemode using F2
set pastetoggle=<F2>

" Alias utf to fileencoding=utf-8
cabbrev utf set fileencoding=utf8

" Save window size and position
set sessionoptions+=resize,winpos
