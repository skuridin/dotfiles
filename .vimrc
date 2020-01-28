set nu
set rnu
set hlsearch
set incsearch
set wildmenu
set lazyredraw
set showmatch
set nobackup
set noswapfile
set nocompatible
set visualbell
set completeopt-=preview
set termguicolors
set background=light

syntax on
filetype plugin indent on
colorscheme solarized8_flat

nmap <C-\> :NERDTreeToggle %<CR>
nmap <S-Up> :m-2<CR>
nmap <S-Down> :m+1<CR>
nmap <esc><esc> :noh<CR>
nmap <up> <nop>
nmap <down> <nop>
nmap <left> <nop>
nmap <right> <nop>

" vim-go
let g:go_auto_type_info = 1
let g:go_metalinter_autosave = 1
let g:go_version_warning = 0

" CtrlP
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Fix Vim background color in Kitty
let &t_ut=''
