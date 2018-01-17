set termguicolors

call plug#begin('~/.config/nvim/plugged')
Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'myusuf3/numbers.vim'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'junegunn/fzf.vim'
Plug '/usr/local/opt/fzf'
Plug 'airblade/vim-rooter'
Plug 'sirver/ultisnips'
Plug 'shougo/deoplete.nvim'
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'valloric/matchtagalways'
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'danro/rename.vim'

call plug#end()

""" guttter numbers
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

""" linting
let g:airline#extensions#ale#enabled = 1
" go to previous error
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" go to next error
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '✘'

""" HTML JSX quick syntax
let g:user_emmet_leader_key='<C-M>'
" tag highlighting
let g:mta_filetypes = {
	\'javascript.jsx' : 1,
  \'html'           : 1,
  \'xhtml'          : 1,
  \'xml'            : 1,
  \'jinja'          : 1,
\}

""" NERDtree
" auto-open on directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" remove deleted files from tree
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeShowHidden=1
map <Tab>t :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

""" searching
" search files; respect gitignore
nnoremap <silent> <Leader>/ :GitFiles<CR>
" search all files
nnoremap <silent> <Leader>' :Files<CR>
" search commits
nnoremap <silent> <Leader>; :Commits<CR>

""" tabs
set tabstop=2
set shiftwidth=2
set expandtab

""" colors
" enable base16 management
let g:airline_theme='base16'
set noshowmode
set background=dark

colorscheme base16-spacemacs
