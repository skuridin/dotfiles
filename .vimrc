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
set background=dark

syntax on
filetype plugin indent on
colorscheme challenger_deep

if has('nvim') || has('termguicolors')
	set termguicolors
endif

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
let g:go_metalinter_autosave = 1
let g:go_version_warning = 0

" Ale
let g:ale_fix_on_save = 1

" Fzf
set rtp+=/usr/local/opt/fzf
nmap <C-p> <plug>(fzf-maps-n)
