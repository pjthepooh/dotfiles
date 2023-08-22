set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-scripts/indentjava.vim'
Plugin 'derekwyatt/vim-scala'
" Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Settings
    set encoding=utf-8
    let python_highlight_all=1
    syntax on
    let NERDTreeIgnore=['\.pyc$', '\~$'] " ignore files in NERDTree
    let g:Powerline_symbols = 'fancy'

" Unmap the arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
"ino <down> <Nop>
"ino <left> <Nop>
"ino <right> <Nop>
"ino <up> <Nop>

" Key mappings. {
    map <Enter> o<ESC>
    map <S-Enter> O<ESC>
    nnoremap <C-J> <C-W><C-J>
    nnoremap <C-K> <C-W><C-K>
    nnoremap <C-L> <C-W><C-L>
    nnoremap <C-H> <C-W><C-H>
    nnoremap <space> za
    
    map <C-n> :NERDTreeToggle<CR>
" }

" Editor settings. {
    syntax enable
    filetype plugin indent on
    
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set textwidth=139
    set expandtab
    set autoindent
    set fileformat=unix

    set background=dark
    set virtualedit=onemore

    set splitbelow
    set splitright
    set mouse=v
    set clipboard=unnamed

" }

" Vim UI {
    color solarized
    if has('gui_running')
        colorscheme zenburn
    else
        set background=dark
        colorscheme solarized
        call togglebg#map("<F5>")
    endif

    set showmode " display the current mode
    set cursorline " Highlight current line

    highlight clear SignColumn " SignColumn should match background
    highlight clear LineNr " Current line number row will have the same background color in relative mode

    set showcmd " show partial commands in status line and selected characters/lines in visual mode
    set backspace=indent,eol,start " Backspace for dummies
    set linespace=0 " No extra spaces between rows
    set number " Line numbers on
    set showmatch " Show matching brackets/paraenthesis
    set incsearch " Find as you type search
    set hlsearch " Highlight search teams
    set winminheight=0 " Windows can be 0 line high
    set ignorecase " "Case insensitive when uc present
    set smartcase " not caps-sensitive unless there is a captital letter
    set wildmenu " Show list instead of just completing
    set wildmode=list:longest,full " Command <Tab> completion, list matches, then longest common part, then all
    set whichwrap=b,s,h,l,<,>,[,] " Backspace and cursor keys wrap too
    set scrolljump=5 " Lines to scroll when cursor leaves screen
    set scrolloff=3 " Minimum lines to keep above and below cursor
    set foldenable " enable folding
    set foldlevelstart=10 " open most folds by default
    set foldnestmax=10 " 10 nested fold max
    set foldmethod=indent

    " Powerline
    set laststatus=2 " Always display the statusline in all windows
    set showtabline=2 " Always display the tabline, even if there is only one tab
    set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
" }

