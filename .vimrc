set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
"Plugin 'vim-scripts/indentpython.vim'
"Bundle 'Valloric/YouCompleteMe'
"Plugin 'scrooloose/syntastic'
"Plugin 'nvie/vim-flake8'
"Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'itchyny/lightline.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set number
set autoread
set encoding=utf-8
set fileencoding=utf-8

runtime macros/matchit.vim

set backspace=indent,eol,start
set hidden
set fileformat=unix
set fileformats=unix,dos
:nnoremap <F5> :buffers<CR>:buffer<Space>

au Filetype python
    \ setlocal tabstop=4 |
    \ setlocal softtabstop=4 |
    \ setlocal shiftwidth=4 |
    \ setlocal textwidth=79 |
    \ setlocal expandtab |
    \ setlocal autoindent |
    \ setlocal fileformat=unix

au Filetype html,javascript,css
    \ setlocal tabstop=2 |
    \ setlocal softtabstop=2 |
    \ setlocal shiftwidth=2 |
    \ setlocal nowrap 


let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" autcomlpetition
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

colorscheme predawn
let python_highlight_all=1

" lightline
set laststatus=2
let g:lightline = {'colorscheme': 'wombat'}
