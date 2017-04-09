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

" Editor settings. {{{
	syntax enable
	filetype plugin indent on
	
	set background=light
	
	set number
	set showcmd " show cmd in bottom
	set wildmenu " matching in commands
	set showmatch " highlight matcching [{()}]

	set virtualedit=onemore

" }}}
