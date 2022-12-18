syntax on
filetype plugin indent on

" tab config
set ts=2 sts=2 sw=2 et ai si

" relative line num
set rnu

" quit
nnoremap <c-q> :q<CR>
inoremap <c-q> <Esc>:q<CR>l 
vnoremap <c-q> <Esc>:q<CR>

" saving file
nnoremap <c-w> :w<CR>
inoremap <c-w> <Esc>:w<CR>l 
vnoremap <c-w> <Esc>:w<CR>

" plugins
call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'octol/vim-cpp-enhanced-highlight'
  Plug 'jiangmiao/auto-pairs'
  Plug 'morhetz/gruvbox'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()

" CoC use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

set termguicolors
colo gruvbox
set background=dark

"toggle nerdtree
inoremap <c-b> <Esc>:NERDTreeToggle<cr>
nnoremap <c-b> <Esc>:NERDTreeToggle<cr>

"copy
vnoremap <C-C> :w !xclip -i -sel c<CR><CR>
