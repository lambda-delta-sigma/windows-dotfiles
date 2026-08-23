"----------------------------------------
" Basic vim behaviour
" ---------------------------------------

set nocompatible
filetype plugin indent on
syntax on
set encoding=utf-8
language messages C

" Show line numbers
set number
" set relativenumber

" Open new splits below and to the right
set splitbelow
set splitright

" Better command-line completion for :edit, :help:, etc
set wildmenu
set wildmode=longest,list,full

" Use Windows clipboard
set clipboard=unnamed


"----------------------------------------
" Key mappings
"----------------------------------------

let mapleader = "\<Space>"

" Save and quit shortcuts
nnoremap <leader>fs :write<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>qq :quit!<CR>

" Move between split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Toggle spell checking in the current buffer
nnoremap <F6> :setlocal spell! spelllang=en_ca,en_us,cjk<CR>

" Reload .vimrc configs
nnoremap <leader>sv :source $MYVIMRC<CR>

" Bind F13 (Caps Lock Remap) to Esc
"inoremap <F13> <Esc>
"vnoremap <F13> <Esc>
"cnoremap <F13> <Esc>
"nnoremap <F13> <Esc>

"----------------------------------------
" Editing behaviour
"----------------------------------------

" Do not automatically continue comment markers on new lines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


