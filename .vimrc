set backspace=indent,eol,start
syntax on
set number
filetype plugin indent on

"tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"smart search
set ignorecase
set smartcase

" relative line num
set rnu

" Ctrl P Fuzzy Search
nnoremap <c-e> :CtrlP
inoremap <c-e> <Esc>:CtrlP

" quit
nnoremap <c-q> :q<CR>
inoremap <c-q> <Esc>:q<CR>l 
vnoremap <c-q> <Esc>:q<CR>

" saving file
nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>l 
vnoremap <c-s> <Esc>:w<CR>

" plugins
call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'octol/vim-cpp-enhanced-highlight'
  Plug 'morhetz/gruvbox'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'rust-lang/rust.vim'
  Plug 'wincent/command-t'
call plug#end()


set termguicolors
colo gruvbox
set background=dark

"toggle nerdtree
inoremap <c-b> <Esc>:NERDTreeToggle<cr>
nnoremap <c-b> <Esc>:NERDTreeToggle<cr>

"copy
vnoremap <C-C> :w !xclip -i -sel c<CR><CR>
