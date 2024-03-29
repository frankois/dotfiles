" ----------------------------------------------------------------------------
" VUNDLE
" - config
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" - vundle
Plugin 'VundleVim/Vundle.vim'

" - plugins
" -- python
Plugin 'kh3phr3n/python-syntax' 	" improve python syntax
Plugin 'raimon49/requirements.txt.vim' 	" requirements.txt syntax
Plugin 'vim-scripts/indentpython.vim' 	" handle python indentation
"Plugin 'python/black' 			" formatting
Plugin 'nvie/vim-flake8' 		" linting

" -- editing
Plugin 'Raimondi/delimitMate' 		" completion brackets, quotes ...
Plugin 'davidhalter/jedi-vim' 		" autocompletion
Plugin 'ervandew/supertab' 		" required for jedi-vim use of tab
Plugin 'luochen1990/rainbow' 		" parenthesis colors
Plugin 'tmhedberg/SimpylFold' 		" block folding
Plugin '907th/vim-auto-save' 		" auto saving feature
Plugin 'majutsushi/tagbar' 		" displays variables / class infos
Plugin 'w0rp/ale' 			" async linting

" -- github
Plugin 'tpope/vim-fugitive' 		" github integration
Plugin 'airblade/vim-gitgutter' 	" github indication
Plugin 'Xuyuanp/nerdtree-git-plugin' 	" git + NERDTree

" -- navigating
Plugin 'scrooloose/nerdtree' 		" folder navigation
Plugin 'kien/ctrlp.vim' 		" searching
set rtp+=/usr/local/opt/fzf 		" needed by fzf
Plugin 'junegunn/fzf.vim' 		" fuzzy searching

" -- other
Plugin 'vim-airline/vim-airline' 	" status bar

" -- markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim' 

call vundle#end()            " required
filetype plugin indent on    " required

" ----------------------------------------------------------------------------
" CONFIG
" - vim
set backupdir=~/.vim/tmp// " move all temporary files in the same folder
set directory=~/.vim/tmp// " // is used to avoid name conflict by
set undodir=~/.vim/tmp//   " saving directory info into filename

set backspace=indent,eol,start  " match backspace behavior as regular editors
set number 			" displays line number
set mouse=a 			" allows use of the mouse
set hlsearch 			" highlight search results
set ignorecase 			" ignore case
set incsearch 			" circular searching
set clipboard=unnamed 	" point to system clipboard
set tags=tags 			" necessary to use ctags

syntax on 		" enable syntax

" - shell
" -- iterm
" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_SR = "\<Esc>]50;CursorShape=2\x7"
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" -- terminal / hyper.js
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" ----------------------------------------------------------------------------
" KEYBIDINGS

" remap leader key
let mapleader = ","

" esc in insert mode
inoremap kj <esc>
" esc in command mode
cnoremap kj <C-C>
" Note: In command mode mappings to esc run the command for some odd
" historical vi compatibility reason. We use the alternate method of
" existing which is Ctrl-C

" shortcut to remove highlight after search
nnoremap <leader>m :nohl<cr>

" put the line in the center when moving
nnoremap gg ggzz
nnoremap n nzz

nnoremap <c-g> :Files<CR>
nnoremap <leader>j :%!jq .<CR>
nnoremap <leader>d :%d<CR>
nnoremap <Leader>b :ls<CR>:b<Space>
map <leader>q :bn<bar>bd#<CR>

" ----------------------------------------------------------------------------
" EDITING
" - python
set encoding=utf-8 			" set encoding to UFT8
let python_self_cls_highlight = 1 	" add python keywords syntax
let python_highlight_all=1 		" enable python-syntax plugin
let g:black_linelength = 79 		" set black length compliant with PEP8

au BufNewFile,BufRead *.* set ts=4 sts=4 sw=4 expandtab

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" commented for work purpose
" autocmd BufWritePre *.py execute ':Black'

" - web
au BufNewFile,BufRead *.js, *.html, *.css, *.yaml, *.json
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab

" - dotfiles
autocmd BufNewFile,BufRead *.aliases*,*.test set syntax=sh

" - markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown

" - all
" vnoremap <C-c> :w !pbcopy<CR><CR> 
" vmap <C-c> :w !pbcopy<CR><CR>

" map <C-c> y:e ~/clipsongzboard<CR>P:w !pbcopy<CR><CR>:bdelete!<CR>
map <C-n> :NERDTreeToggle<CR>

" ----------------------------------------------------------------------------
" NERDTREE
" - global
let NERDTreeMinimalUI = 1 		" removes ?
let NERDTreeDirArrows = 1 		" modify dir symbols
let NERDTreeShowHidden=1 		" show hidden files
let NERDTreeIgnore=['\.pyc$', '\~$'] 	" ignore files in NERDTree
let g:nerdtree_tabs_autoclose=0
set splitbelow 				" set opening behavior
set splitright 				" set opening behavior

" - split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nmap ; :Buffers<CR>

" ----------------------------------------------------------------------------
" SIMPYLFOLD
let g:SimpylFold_docstring_preview=1 	" preview docstring when folded

" - enable folding
set foldmethod=indent
set foldlevel=99

" - enable folding with the spacebar
nnoremap <space> za

" ----------------------------------------------------------------------------
" GOYO
let g:goyo_width = 120
nnoremap <leader>g :Goyo<CR>

" LIMELIGHT
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1
autocmd! User GoyoEnter Limelight
autocmd! User GoyoEnter highlight EndOfBuffer ctermfg=236
autocmd! User GoyoLeave Limelight!

" ----------------------------------------------------------------------------
" OTHER 
let g:jedi#auto_initialization = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#use_tabs_not_buffers = 1
let g:rainbow_active = 1 		" enable Raibow at startup
let g:auto_save = 1  			" enable AutoSave at startup
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1 " Set this. Airline will handle the rest.
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:ctrlp_show_hidden = 1
let g:ale_python_flake8_executable = 'python3'   " or 'python' for Python 2

" command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, '--word-regexp', <bang>0)
" ----------------------------------------------------------------------------
" LOCAL
" ! DO NOT PUT ANYTHING BELOW
" loading local configuration if exists
" snippet from : https://devel.tech/snippets/n/vIIMz8vZ/load-vim-source-files-only-if-they-exist/
function! SourceIfExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction

call SourceIfExists('~/.vimrc.local')

