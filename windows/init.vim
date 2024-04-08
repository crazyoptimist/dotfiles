" .vimrc for minimalists, crafted by crazyoptimist

""""""""""""""""""""""""
" VIM BASIC CONFIG
""""""""""""""""""""""""

syntax enable                                             " Enable syntax highlight
set number                                                " Show line numbers
set relativenumber                                        " Show relative line numbers
set ruler                                                 " Show the rulers
set showcmd                                               " Show current cursor info
set autoindent                                            " Automatically guess the indentation given the previous one
set tabstop=2                                             " Number of spaces that a tab counts for
set softtabstop=2                                         " Number of spaces that a <Tab> key press counts for
set shiftwidth=2                                          " Size of an indentation
set expandtab                                             " Convert tabs into spaces
set hlsearch                                              " Highlight search results
set incsearch                                             " Search incremetally as you type
set ignorecase                                            " Ignore cases when searching
set noswapfile                                            " Disable swap files
set undofile                                              " Enable keeping history across sessions, don't forget to create the undo folder `mkdir -p ~/.vim/undo`
set undodir=~/.vim/undo/
set nofixeol                                              " Do not insert a new line at the end of the file automatically
set backspace=indent,eol,start                            " Enable backspace key to delete stuffs properly
let mapleader=","                                         " Remap leader to comma
" Mapping: Switch to the next/previous buffer
map <leader>n :bnext<CR>
map <leader>p :bprevious<CR>
" Mapping: Close the current buffer
map <leader>d :bd<CR>
" Toggle search hightlight
map <leader>h :set hlsearch!<CR>
" Navigate vim windows better
noremap <C-K> :wincmd k<CR>
noremap <C-J> :wincmd j<CR>
noremap <C-H> :wincmd h<CR>
noremap <C-L> :wincmd l<CR>
" Netsw config
let g:netrw_keepdir = 0
let g:netrw_winsize = 30
let g:netrw_banner = 0
let g:netrw_liststyle = 3
nnoremap <C-N> :Lexplore<CR>
