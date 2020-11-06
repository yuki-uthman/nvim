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

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sainnhe/sonokai'
Plug 'https://github.com/joshdick/onedark.vim.git'

" Nerdtree
Plug 'preservim/nerdtree'

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

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

" Mode Settings Terminal
if $TERM_PROGRAM =~ "Terminal"
  let &t_SI.="\e[5 q" "SI = INSERT mode
  let &t_SR.="\e[4 q" "SR = REPLACE mode
  let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
endif

let mapleader = " "
  






"=======================================================================
" Keymappings 
"=======================================================================

" Fast saving
nnoremap <leader>w :w!<cr>

" Exit
" nnoremap <M-w> :q!<CR>

" Start Command Prompt
nnoremap <Space> :

" Move window up/down
nnoremap <C-K> <C-Y>
nnoremap <C-J> <C-E>

" Clear highlight
nnoremap <silent> <ESC><ESC> :nohlsearch<CR>


" Search and Replace
nnoremap <leader>s :%s///g<left><left><left>
xnoremap <leader>s :s///g<Left><Left><left>

" Replace one at a time
" cgn





"=======================================================================
" Plugins settings
"======================================================================

" Colorschemes
 colorscheme onedark

" Commentary
nnoremap <silent> <leader>/ :Commentary<CR>


" Completor
" use tab to autocomplete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

" Nerdtree
nnoremap <silent> \ :NERDTreeToggle<CR>








