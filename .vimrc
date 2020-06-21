filetype indent plugin on
syntax on
set background=dark
colorscheme jellybeans

set wildmenu
set autoindent
set showcmd
set cursorline
set ignorecase
set smartcase
set number relativenumber " hybrid numbers
set splitbelow
set splitright
set mouse=a
set incsearch
set hlsearch
set expandtab
set shiftwidth=2
set textwidth=89
set softtabstop=2
set wrap

" Easy shortcut list:
" <C-n> nerdtree
" <,cc> quick-comment
" <,cu> quick-uncomment
" <F3> timestamp
" <C-j> move down vimsplit
" <C-k> move up vimsplit
" <C-l> move right vimsplit
" <C-h> move left vimsplit

" Leader default is \ but , is easier to reach
let mapleader = ","

" easier vimsplit movement
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

" NerdTree shortcut to ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Reformat code with F7 
map <F7> gg=G<C-o><C-o>

" Timestamp insert from C
nmap <F3> i<C-R>=strftime("<%Y-%m-%d %a>")<CR><Esc>
imap <F3> <C-R>=strftime("<%Y-%m-%d %a>")<CR>

" Close VIM if only window left open is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" and make it ~purple~ but the theme don't work....wtfffff
" autocmd BufEnter *.md colorscheme purpura

" Add shebangs to .sh files
autocmd BufNewFile *.sh 0r ~/.vim/templates/shell-script
autocmd BufNewFile *.sh normal ji

" Need this for lightline
set laststatus=2
set noshowmode
if !has( 'gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'frazrepo/vim-rainbow'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'jelera/vim-javascript-syntax'
Plug 'jceb/vim-orgmode' " super nice for notetaking
Plug 'vim-scripts/utl.vim'
Plug 'tpope/vim-speeddating'
Plug 'gko/vim-coloresque'
call plug#end()
