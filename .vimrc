" vim config, requires vundle, see below

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'

call vundle#end()            " required
" filetype plugin indent on    " required

" python friendly, tab=4 spaces
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set ruler

" remap the window switch functions. C-J since C-j is tmux's prefix.
map <c-J> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

set encoding=utf-8
set fileencoding=utf-8

" search settings
set hlsearch
set ignorecase smartcase
set incsearch

let mapleader = ","
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

let g:ctrlp_map = '<leader>f'

set timeoutlen=1000 ttimeoutlen=0

set cc=101
:hi ColorColumn ctermbg=grey guibg=grey

nmap <F8> :TagbarToggle<CR>

:set number
autocmd BufWritePre *.py :%s/[\r \t]\+$//e
autocmd BufWritePre *.sql :%s/[\r \t]\+$//e
autocmd BufWritePre *.yml :%s/[\r \t]\+$//e
autocmd BufWritePre *.md :%s/[\r \t]\+$//e
autocmd BufWritePost .vimrc :so ~/.vimrc
vnoremap < <gv
vnoremap > >gv
:syntax on
