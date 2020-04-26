call plug#begin(stdpath('data') . '/plugged')
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'alvan/vim-closetag'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-sleuth'
call plug#end()

syntax on
filetype plugin indent on
colorscheme gruvbox

" Performance
set lazyredraw
set noswapfile
set nowritebackup

" GUI
set termguicolors
set scrolloff=6
set number relativenumber
set cursorline
set showmatch

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
nnoremap <C-p> :GFiles<CR>
nnoremap <C-g> :GFiles?<CR>
imap <c-x><c-f> <plug>(fzf-complete-path)

" Ale
let g:ale_fix_on_save = 1
let g:ale_set_highlights = 0
let g:ale_completion_enabled = 1
let g:ale_completion_tsserver_autoimport = 1
let g:ale_completion_max_suggestions = 10
set omnifunc=ale#completion#OmniFunc

" Fzf
let g:fzf_layout = { 'window': { 'width': 0.7, 'height': 0.6 } }

" NerdTree
let NERDTreeQuitOnOpen = 1

" vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.js,*.html.erb,*.md,*.jsx,*.ts,*.tsx'