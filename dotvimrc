" .vimrc by CrazyOptimist
" DO NOT PUT ANY LINE YOU DO NOT KNOW WHAT IT IS

""""""""""""""""""""""""
" VIM OPTIONS BEGIN
""""""""""""""""""""""""
syntax enable                                             " Enables syntax highlight
set number                                                " Shows line numbers
set ruler                                                 " Shows the rulers
set showcmd                                               " Shows current cursor info
set autoindent                                            " Automatically guesses the indentation given the previous one
set shiftwidth=2                                          " Uses 2 space tabs by default
set softtabstop=2
set expandtab						  " Convert tabs into spaces
set hlsearch                                              " Automatically highlights search results, to hide them run :noh
set incsearch                                             " Searches incremetally as you type.
set ignorecase                                            " Ignores cases when searching
set noswapfile                                            " Disables swap files
set undofile                                              " Enable keeping history across sessions, don't forget to mkdir
set undodir=~/.vim/undo/
set nofixeol                                              " Do not insert a new line at the end of the file automatically
set backspace=indent,eol,start                            " Enable backspace key to delete stuffs properly

""""""""""""""""""""""""
" PLUGINS
""""""""""""""""""""""""
" Begin Vundle setup - a plugin manager
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" :PluginInstall
set nocompatible              " we are not gonna use vi, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" list your plugins here
Plugin 'morhetz/gruvbox'
Plugin 'preservim/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'lifepillar/vim-mucomplete'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-commentary'

" Plugin 'neoclide/coc.nvim'                " autocomplete intellisense
"                                             coc.nvim requires node.js and typescript installed and
"                                             run :CocInstall coc-tsserver

" Plugin 'vim-ruby/vim-ruby'                " ruby support

" Plugin 'fatih/vim-go'                     " golang support

" Plugin 'yuezk/vim-js'                     " javascript support enhanced
" Plugin 'HerringtonDarkholme/yats.vim'     " typescript support advanced

" Plugin 'posva/vim-vue'                    " vue syntax support
" Plugin 'maxmellon/vim-jsx-pretty'         " react jsx syntax support


call vundle#end()            " required
filetype plugin indent on    " required
" End Vundle setup

""""""""""""""""""""""""
" PLUGIN SPECIFIC CONFIG
""""""""""""""""""""""""
" Config for making choosen color scheme look great
set background=dark
set t_Co=256
colorscheme gruvbox

