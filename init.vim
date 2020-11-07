"=======================================================================
" Basics 
"=======================================================================

" Saving
nnoremap <M-s> :w!<cr>

" Exit
nnoremap <M-w> :q!<CR>

" Source
nnoremap <M-r> :so %<CR>

" Start Command Prompt
nnoremap <Space> :













"=======================================================================
" Window
"=======================================================================

" Move window up/down
nnoremap <C-K> <C-Y>
nnoremap <C-J> <C-E>





















"=======================================================================
" Search & Replace
"=======================================================================

" Clear highlight
nnoremap <silent> <ESC><ESC> :nohlsearch<CR>

" Search and Replace
nnoremap <leader>s :%s///g<left><left><left>
xnoremap <leader>s :s///g<Left><Left><left>

" Replace one at a time
" cgn















"=======================================================================
" Vim-Plug Installs
"=======================================================================

call plug#begin()

" Comment
Plug 'tpope/vim-commentary'

" Autocomplete
Plug 'maralla/completor.vim'

" Yank highlight
Plug 'machakann/vim-highlightedyank'

" Smooth scrolling
Plug 'psliwka/vim-smoothie'

" Nerdtree
Plug 'preservim/nerdtree'

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sainnhe/sonokai'
Plug 'joshdick/onedark.vim'

" Airline
Plug 'vim-airline/vim-airline'

call plug#end()

























"=======================================================================
" General Settings 
"=======================================================================

set scrolloff=0
set number
set relativenumber
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set noswapfile
set noshowcmd 
set noruler
set noshowmode
set clipboard=unnamedplus
set clipboard^=unnamed
set mouse=a
set timeoutlen=400
set splitbelow
set splitright
set backspace=indent,eol,start
set ignorecase
set smartcase
set hlsearch
set incsearch
set shortmess+=c
set complete+=kspell
set completeopt=menuone,longest
set termguicolors

syntax enable
syntax on
filetype on
filetype indent on
filetype plugin on

let mapleader = " "
  















"=======================================================================
" Plugins settings
"======================================================================

" Colorschemes
 colorscheme onedark

" Commentary
nnoremap <silent> <M-/> :Commentary<CR>

" Completor
" use tab to autocomplete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

" Nerdtree
nnoremap <silent> \ :NERDTreeToggle<CR>

" Airline
let g:airline_inactive_collapse=1
let g:airline#extensions#taboo#enabled = 1
let g:airline_section_c = '%t'

" remove the filetype part
let g:airline_section_x=''
let g:airline_section_y=''
let g:airline_section_z = '%{strftime("%a %d %b %H:%M")}'

" remove separators for empty sections
let g:airline_skip_empty_sections = 1










