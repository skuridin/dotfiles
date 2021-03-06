" Install vim-plug if missing
let vim_plug_path = stdpath('data') . '/site/autoload/plug.vim'
let vim_config_path = stdpath('config') . '/init.vim'
if empty(glob(vim_plug_path))
	silent exe '!curl -fLo ' . vim_plug_path . ' --create-dirs ' . 
				\ 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	exe 'source ' . vim_config_path
	PlugInstall --sync
endif

call plug#begin(stdpath('data') . '/plugged')
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'alvan/vim-closetag'
Plug 'dense-analysis/ale'
Plug 'easymotion/vim-easymotion'
Plug 'ervandew/supertab'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-sleuth' " Detect indent
Plug 'tpope/vim-surround'
Plug 'matze/vim-move'
call plug#end()

syntax enable
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
set numberwidth=6
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
nmap  <space> <Plug>(easymotion-bd-w)
inoremap jj <esc>

" Ale
let g:ale_fix_on_save = 1
let g:ale_set_highlights = 0
let g:ale_completion_enabled = 1
let g:ale_completion_tsserver_autoimport = 1
let g:ale_completion_max_suggestions = 10
set omnifunc=ale#completion#OmniFunc
set completeopt=menu,menuone,preview,noselect,noinsert

" Fzf
let g:fzf_layout = { 'window': { 'width': 0.7, 'height': 0.6 } }

" NerdTree
let NERDTreeQuitOnOpen = 1

" vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.js,*.html.erb,*.md,*.jsx,*.ts,*.tsx'

" Startify
let g:startify_change_to_dir = 0
