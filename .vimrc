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
set cursorline

syntax on
filetype plugin indent on
colorscheme noctu
highlight CursorLine ctermbg=236
highlight VertSplit ctermbg=8

" Keys
nmap <C-\> :NERDTreeToggle<CR>
nmap <S-Up> :m-2<CR>
nmap <S-Down> :m+1<CR>
nmap <esc><esc> :noh<CR>
nmap <up> <nop>
nmap <down> <nop>
nmap <left> <nop>
nmap <right> <nop>

" Ale
let g:ale_fix_on_save = 1

" Fzf
set rtp+=/usr/local/opt/fzf
set rtp+=~/.fzf
nmap <C-p> :Files<CR>
nmap <C-g> :GFiles?<CR>

" GitGutter
highlight GitGutterAdd    ctermfg=2 ctermbg=0
highlight GitGutterChange ctermfg=7 ctermbg=0
highlight GitGutterDelete ctermfg=1 ctermbg=0

" NerdTree
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
