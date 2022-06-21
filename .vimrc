colorscheme default 
set hlsearch
set ignorecase
command C let@/=""
set autoindent
set incsearch
set linebreak
set scrolloff=3
set sidescrolloff=5
syntax on
set ruler
set novisualbell
set noerrorbells
set wildmenu
set number
set mouse=a
set background=dark
set backspace=indent,eol,start
set confirm
set history=500
set nu rnu
set clipboard=unnamedplus
set sts=2

" delete line in insert mode
inoremap <C-d> <esc>ddi

" leader mapping
let mapleader = ","

" Screen splits and saves for editing config
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" split screens with leader
nnoremap <leader>v :vsplit<cr>
nnoremap <leader>h :split<cr>

iabbrev adn and
iabbrev wahr what
iabbrev waht what
iabbrev tehn then
command W w
command Wq wq

" Wrap word
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>< viw<esc>a><esc>bi<<esc>lel
nnoremap <leader>[ viw<esc>a]<esc>bi[<esc>lel
nnoremap <leader>{ viw<esc>a}<esc>bi{<esc>lel
nnoremap <leader>( viw<esc>a)<esc>bi(<esc>lel

" better basic macros
inoremap jk <esc>
vnoremap jk <esc> 
nnoremap <leader>d viw<esc>lxhbhx
vnoremap H 0
vnoremap L $
nnoremap H 0
nnoremap L $

" sys cliboard mappings (defunct)
"nnoremap <C-y> "*y
"vnoremap <C-y> "*y
"nnoremap <C-p> "*gP
"vnoremap <C-p> "*gP

" delete to beginning or end of line
inoremap <C-u> <esc>v0xi
inoremap <C-k> <esc>v$xi
nnoremap <C-u> v0x
nnoremap <C-k> v$x
nnoremap <Space> i_<esc>r
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
set belloff=all

" cpp template init
autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp

" for compiling and running cpp programs (broken?)
nnoremap <C-c> :!g++ -o  %:r.out % -std=c++17<Enter>
nnoremap <C-x> :!./%:r.out<Enter>
  
" When editing a file, always jump to the last known cursor position.
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif
