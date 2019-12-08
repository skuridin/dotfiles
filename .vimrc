set relativenumber
set background=light
set hlsearch
set incsearch
set wildmenu
set lazyredraw
set showmatch

syntax on
filetype plugin indent on
colorscheme solarized8_flat

nmap <C-\> :NERDTreeToggle<CR>
nmap <S-Up> :m-2<CR>
nmap <S-Down> :m+1<CR>
nmap <esc><esc> :noh<CR>
nmap <Tab> :GoImports<CR>:GoLint<CR>
