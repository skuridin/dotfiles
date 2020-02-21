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
colorscheme dim
highlight CursorLine cterm=none ctermbg=236

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
highlight GitGutterAdd    ctermfg=2
highlight GitGutterChange ctermfg=7
highlight GitGutterDelete ctermfg=1

" NerdTree
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
