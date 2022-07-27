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
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-commentary'
Plugin 'prettier/vim-prettier'
Plugin 'junegunn/fzf'

" powerful autocomplete intellisense.
" coc.nvim requires node.js installed and you can install language server extensions using `:CocInstall extension-name`.
" recommended extensions are coc-tsserver (requires typescript), coc-json, coc-html, coc-css.
" Plugin 'neoclide/coc.nvim'                

" Plugin 'vim-ruby/vim-ruby'                " ruby support
" Plugin 'keith/rspec.vim'

" Plugin 'fatih/vim-go'                     " golang support

" Plugin 'hashivim/vim-terraform'           " terraform support

" Plugin 'yuezk/vim-js'                     " javascript support enhanced
" Plugin 'HerringtonDarkholme/yats.vim'     " typescript support advanced
" Plugin 'maxmellon/vim-jsx-pretty'         " react jsx syntax support
" Plugin 'mattn/emmet-vim'                  " html auto complete
" Plugin 'posva/vim-vue'                    " vue syntax support

call vundle#end()            " required
filetype plugin indent on    " required
" End Vundle setup

""""""""""""""""""""""""
" PLUGIN SPECIFIC CONFIG
""""""""""""""""""""""""
" config for making choosen color scheme look great
set background=dark
set termguicolors                   " enable true colors support
set t_Co=256
colorscheme gruvbox

" config for vim-prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" config for coc.nvim
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" config for coc-nvim with ruby
" let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-go', 'coc-solargraph']

"config for fzf
nmap <C-P> :FZF<CR>
let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'

"config for nerdtree
nnoremap <C-N> :NERDTreeToggle<CR>
