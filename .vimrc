filetype plugin indent on
syntax on
set number
set shortmess-=S
set backspace=indent,eol,start
set term=xterm-256color
set background=light
set showcmd
syntax enable
colorscheme monokai
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set clipboard=unnamed
set incsearch
hi Search guibg=blue
set nofixendofline
call plug#begin()
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'bronson/vim-trailing-whitespace'
call plug#end()

" search mappings
nmap ; :Files<CR>
nmap t :Buffers<CR>

" NERDTREE Mappings
map <leader>t :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>
