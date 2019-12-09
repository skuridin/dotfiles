set number
set background=dark
set hlsearch
set incsearch
set wildmenu
set lazyredraw
set showmatch
set nobackup
set noswapfile
set nocompatible
set visualbell

syntax on
filetype plugin indent on
colorscheme pablo

nmap <C-\> :NERDTreeToggle<CR>
nmap <S-Up> :m-2<CR>
nmap <S-Down> :m+1<CR>
nmap <esc><esc> :noh<CR>
nmap <up> <nop>
nmap <down> <nop>
nmap <left> <nop>
nmap <right> <nop>

" vim-go
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_doc_popup_window = 1
let g:go_metalinter_autosave = 1
