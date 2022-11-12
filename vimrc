" .vimrc by crazyoptimist
" DO NOT ADD ANYTHING UNLESS YOU DO KNOW WHAT IT IS

""""""""""""""""""""""""
" VIM BASIC CONFIG
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

" Install vim-plug, a plugin manager. For nvim, see their docs
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" :PlugInstall

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" list your plugins here
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
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

" Plug 'yuezk/vim-js'                     " javascript support enhanced
" Plug 'HerringtonDarkholme/yats.vim'     " typescript support advanced
" Plug 'maxmellon/vim-jsx-pretty'         " react jsx syntax support
" Plug 'mattn/emmet-vim'                  " html auto complete
" Plug 'posva/vim-vue'                    " vue syntax support

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

""""""""""""""""""""""""
" PLUGIN SPECIFIC CONFIG
""""""""""""""""""""""""

" config for making choosen color scheme look great
set background=dark
set termguicolors                           " enable true colors support
set t_Co=256
colorscheme gruvbox

" config for vim-prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

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

" tab config for different languages
autocmd BufEnter *.py :setlocal softtabstop=4 shiftwidth=4 expandtab
autocmd BufEnter *.go :setlocal softtabstop=8 shiftwidth=8 expandtab

" javascript/typescript
" let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-html', 'coc-css']
" ruby
" let g:coc_global_extensions = ['coc-solargraph', 'coc-json']
" go
" let g:coc_global_extensions = ['coc-go', 'coc-json']
" python
" let g:coc_global_extensions = ['coc-pyright', 'coc-json']

" config for fzf
nmap <C-P> :FZF<CR>
let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'

"config for nerdtree
nnoremap <C-N> :NERDTreeToggle<CR>

""""""""""""""""""""""""
" THE END
""""""""""""""""""""""""
