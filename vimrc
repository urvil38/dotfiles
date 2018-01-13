set nocompatible

syntax on

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()



Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-repeat'
Plugin 'mattn/emmet-vim'
Plugin 'raimondi/delimitmate'
Plugin 'tpope/vim-markdown'
Plugin 'flazz/vim-colorschemes'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'fatih/vim-go'
Plugin 'Shougo/neocomplete.vim'
Plugin 'VundleVim/Vundle.vim'

call vundle#end()
filetype plugin indent on

set term=screen-256color
colorscheme PaperColor


set autoindent
set bg=dark
set backspace=indent,eol,start
set expandtab
set ignorecase
set incsearch
set laststatus=2
set linebreak
set nobackup
set noerrorbells
set nolist
set noswapfile
set novb
set nowrap
set number
"set relativenumber
set ruler
set scrolloff=8
set showmatch
set shiftwidth=4
set shortmess=I
set showcmd
set showmode
set sidescroll=1
set sidescrolloff=7
set smartcase
set softtabstop=4
set undolevels=1000

"highlight ColorColumn ctermbg=black
"set colorcolumn=80

"NERDTree
map <C-n> :NERDTreeToggle<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>

"syntastic plugin configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"neocomplete-go plugin configuration
let g:neocomplete#enable_at_startup = 1
let g:go_fmt_command = "goimports"
"Airline
let g:airline_theme='tomorrow'
let g:airline_powerline_fonts = 1

if has("gui_running")
	    if has("gui_gtk2")
		set guifont=Inconsolata\ for\ Powerline\ Medium\ 16
			    colorscheme iceberg
			endif
		endif
