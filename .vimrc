set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Unmap the arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

" Editor settings. {{{
	syntax enable
	filetype plugin indent on
	
	set tabstop=4
	set softtabstop=4
	set expandtab

	set background=light
	set cursorline
	set number
	set showcmd " show cmd in bottom
	set wildmenu " matching in commands
	set showmatch " highlight matcching [{()}]
    
    set incsearch " search as characters are entered
    set hlsearch " highlight matches
    set smartcase " not caps-sensitive unless there is a captital letter
    
    set foldenable " enable folding
    set foldlevelstart=10 " open most folds by default
    set foldnestmax=10 " 10 nested fold max
    set foldmethod=indent
    nnoremap <space> za " space un/folds
    
	set virtualedit=onemore

" }}}
