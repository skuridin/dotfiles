set nocompatible
set nu
set rnu
set hlsearch
set incsearch
set wildmenu
set lazyredraw
set showmatch
set nobackup
set noswapfile
set visualbell
set completeopt=menu,menuone,preview,noselect,noinsert
set completeopt-=preview
set hidden
set nowritebackup
set updatetime=10
set numberwidth=5
set scrolloff=6
set cursorline
set cursorcolumn
set showcmd

syntax on
filetype plugin indent on
colorscheme default

" Colors
highlight CursorLine cterm=NONE ctermbg=236
highlight CursorColumn ctermbg=236

" Keys
nnoremap <C-\> :NERDTreeToggle<CR>
nnoremap <leader>t :NERDTreeToggle %<CR>
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+1<CR>
nnoremap <esc><esc> :noh<CR>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <Leader>s :update<CR>

" Ale
let g:ale_fix_on_save = 1
let g:ale_set_highlights = 0
let g:ale_completion_enabled = 1
let g:ale_completion_tsserver_autoimport = 1
let g:ale_completion_max_suggestions = 10
set omnifunc=ale#completion#OmniFunc

" Fzf
set rtp+=/usr/local/opt/fzf
set rtp+=~/.fzf
nnoremap <C-p> :Files<CR>
nnoremap <C-g> :GFiles?<CR>

" NerdTree
let NERDTreeQuitOnOpen = 1

" vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.js,*.html.erb,*.md,*.jsx,*.ts,*.tsx'
