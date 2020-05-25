filetype indent plugin on
syntax on
set background=dark
colorscheme gotham

set wildmenu
set autoindent
set showcmd
set cursorline
set ignorecase
set smartcase
set number
set mouse=a
set incsearch
set hlsearch
set expandtab
set shiftwidth=2
set textwidth=79
set softtabstop=2

" Leader default is \ but , is easier to reach
let mapleader = ","

" NerdTree shortcut to ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Reformat code with F7 
map <F7> gg=G<C-o><C-o>

" Autoclose parens and brackets, ctrl j to skip out
":inoremap { {}<Esc>i
":inoremap {<CR> {<CR>  <CR>}<Esc>k i
:inoremap <C-j> <Esc>/[)}"'\]>]<CR>:nohl<CR>a

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
call plug#end()
