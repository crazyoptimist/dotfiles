" .vimrc for minimalists, crafted by crazyoptimist

""""""""""""""""""""""""
" VIM BASIC CONFIG
""""""""""""""""""""""""

syntax enable                                             " Enables syntax highlight
set number                                                " Shows line numbers
set relativenumber                                        " Shows relative line numbers
set ruler                                                 " Shows the rulers
set showcmd                                               " Shows current cursor info
set autoindent                                            " Automatically guesses the indentation given the previous one
set shiftwidth=2                                          " Uses 2 space tabs by default
set softtabstop=2
set expandtab                                             " Convert tabs into spaces
set hlsearch                                              " Automatically highlights search results, to hide them run :noh
set incsearch                                             " Searches incremetally as you type.
set ignorecase                                            " Ignores cases when searching
set noswapfile                                            " Disables swap files
set undofile                                              " Enable keeping history across sessions, don't forget to create the undo folder `mkdir -p ~/.vim/undo`
set undodir=~/.vim/undo/
set nofixeol                                              " Do not insert a new line at the end of the file automatically
set backspace=indent,eol,start                            " Enable backspace key to delete stuffs properly
let mapleader=","                                         " Map leader to comma
" Mapping: Switch to the next/previous buffer
map <leader>n :bnext<CR>
map <leader>p :bprevious<CR>
" Mapping: Close the current buffer
map <leader>d :bd<CR>

""""""""""""""""""""""""
" PLUGINS
""""""""""""""""""""""""

" Install vim-plug, a plugin manager. For nvim, see their docs
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" :PlugInstall

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" list your plugins here
Plug 'gruvbox-community/gruvbox'
Plug 'lambdalisue/fern.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'prettier/vim-prettier'
Plug 'junegunn/fzf'

" Plug 'neoclide/coc.nvim', {'branch': 'release'}   " requires node.js installed

" Plug 'vim-ruby/vim-ruby'                " ruby support
" Plug 'keith/rspec.vim'

" Plug 'fatih/vim-go'                     " golang support

" Plug 'hashivim/vim-terraform'           " terraform support

" Plug 'pangloss/vim-javascript'          " javascript support
" Plug 'HerringtonDarkholme/yats.vim'     " typescript support
" Plug 'maxmellon/vim-jsx-pretty'         " react jsx syntax support
" Plug 'mattn/emmet-vim'                  " html auto complete
" Plug 'posva/vim-vue'                    " vue syntax support

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

""""""""""""""""""""""""
" PLUGIN SPECIFIC CONFIG
""""""""""""""""""""""""

" vim-airline config
let g:airline#extensions#tabline#enabled = 1        " enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t'    " show filename only
let g:airline_powerline_fonts = 1                   " use powerline fonts

" fern.vim config
let g:fern#drawer_width = 30
let g:fern#default_hidden = 1
let g:fern#default_exclude = '^\%(\.git\|node_modules\)$'
nnoremap <C-N> :Fern . -drawer -toggle -reveal=%<CR>

" config for making choosen color scheme look great
set background=dark
set termguicolors   " enable true colors support
set t_Co=256
colorscheme gruvbox

" config for vim-prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" tab config for different languages
autocmd BufEnter *.py :setlocal softtabstop=4 shiftwidth=4 expandtab
autocmd BufEnter *.go :setlocal softtabstop=8 shiftwidth=8 expandtab

" config for coc.nvim
function! CheckBackSpace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackSpace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
" useful commands are :CocInstall, :CocConfig, :h coc-completion-example

" coc.nvim extensions
let g:coc_global_extensions = ['coc-json', 'coc-go']
" go: 'coc-go'
" ruby: 'coc-solargraph'
" python: 'coc-pyright'
" typescript: 'coc-tsserver'
" html, css: 'coc-html', 'coc-css', 'coc-emmet'

" config for fzf
nmap <C-P> :FZF<CR>
let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'

" syntax highlight in vim-go
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1


""""""""""""""""""""""""
" THE END
""""""""""""""""""""""""
