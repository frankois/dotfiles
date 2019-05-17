set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" All of your Plugins must be added before the following line
"
Plugin 'scrooloose/nerdtree' " folder navigation
Plugin 'davidhalter/jedi-vim' " autocompletion
Plugin 'ervandew/supertab' " required for jedi-vim use of tab
Plugin 'tpope/vim-fugitive' " Github intergration
Plugin 'luochen1990/rainbow' " Parenthesis colors
"Plugin 'JamshedVesuna/vim-markdown-preview' " Markdown previewer
"Plugin 'shime/vim-livedown' " Mardown ?
Plugin 'wincent/command-t' " TO MAKE WORKING
Plugin 'raimon49/requirements.txt.vim' " requirements.txt syntax
Plugin 'vim-airline/vim-airline' " status bar
Plugin 'Raimondi/delimitMate' " completion brackets, quotes ...
Plugin 'python/black' " Linting
Plugin 'airblade/vim-gitgutter' " Github indication
Plugin 'Xuyuanp/nerdtree-git-plugin' "Git + NERDTree
"Plugin 'gabrielelana/vim-markdown' "Mardown support
Plugin 'iamcco/markdown-preview.nvim'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on

set number
set mouse=a

" configuration
let g:jedi#auto_initialization = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#use_tabs_not_buffers = 1
let g:rainbow_active = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" ITERM
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" TERM
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" mapping
vnoremap <C-c> :w !pbcopy<CR><CR> 
" noremap <C-v> :r !pbpaste<CR><CR>

map <C-n> :NERDTreeToggle<CR>
