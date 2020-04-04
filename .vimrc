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
set completeopt=menu,menuone,preview,noselect,noinsert
set completeopt-=preview

syntax on
filetype plugin indent on
colorscheme default

" Keys
nmap <C-\> :NERDTreeToggle<CR>
nmap <leader>t :NERDTreeToggle %<CR>
nmap <S-Up> :m-2<CR>
nmap <S-Down> :m+1<CR>
nmap <esc><esc> :noh<CR>
nmap <up> <nop>
nmap <down> <nop>
nmap <left> <nop>
nmap <right> <nop>

" Ale
let g:ale_fix_on_save = 1
let g:ale_set_highlights = 0
let g:ale_completion_enabled = 1
let g:ale_completion_tsserver_autoimport = 1
set omnifunc=ale#completion#OmniFunc

" Fzf
set rtp+=/usr/local/opt/fzf
set rtp+=~/.fzf
nmap <C-p> :Files<CR>
nmap <C-g> :GFiles?<CR>

" NerdTree
let NERDTreeQuitOnOpen = 1

" vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.js,*.html.erb,*.md,*.jsx,*.ts,*.tsx'
