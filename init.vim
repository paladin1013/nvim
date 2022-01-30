if empty(glob($HOME.'/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

if empty(glob($HOME.'/.config/nvim/plugged/wildfire.vim/autoload/wildfire.vim'))
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif









set nocompatible

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=4
set shiftwidth=2
set softtabstop=2
set list
set scrolloff=5
set tw=0
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
set laststatus=2
" set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set mouse=a
set hidden
set clipboard=unnamedplus
vnoremap Y "+y

let mapleader=" "
syntax on " highlight syntax
set number " show line numbers
set noswapfile " disable the swapfile
set hlsearch " highlight all results
noremap <LEADER><CR> :nohlsearch<CR>
set ignorecase " ignore case in search
set incsearch " show search results as you type
inoremap jk <ESC>
nnoremap <C-c> "*y
vnoremap <C-c> "*y
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
exec "nohlsearch"
set relativenumber
set smartcase
map s <nop>
nmap <LEADER>p :pu<CR> 
"function! MySplit( fname )
    "let bufnum=bufnr(expand(a:fname))
    "let winnum=bufwinnr(bufnum)
    "if winnum != -1
        "" Jump to existing split
        "exe winnum . "wincmd w"
    "else
        "" Make new split as usual
        "exe "split " . a:fname
    "endif
"endfunction
"command! -nargs=1 Split :call MySplit("<args>")
"cabbrev split Split
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sj :set splitbelow<CR>:split<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sv <C-w>t<C-w>H
map sc <C-w>t<C-w>K

map <LEADER>l <C-w>l
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
imap <c-e> <esc>A
imap <c-a> <esc>I
" map <up> :res +5<CR>
" map <down> :res -5<CR>
" map <left> :vertical resize +5<CR>
" map <right> :vertical resize -5<CR>

map tn :tabe<CR>
map th :-tabnext<CR> 
map tl :+tabnext<CR> 
map <LEADER>rc :e ~/.config/nvim/init.vim<CR>
map <LEADER>zsh :e ~/.zshrc<CR>
map <LEADER>R :w<CR> :source $MYVIMRC<CR>
" noremap d <C-d>zz
" noremap u <C-u>zz
"noremap <C-u> u
"noremap <C-d> d
noremap <C-d> 15<C-d>zz
noremap <C-u> 15<C-u>zz
map <LEADER>sc :set spell!<CR>
map [b :bp<CR>
map ]b :bn<CR>

call plug#begin('$HOME/.config/nvim/plugged')


Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
" File navigation
"Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Chiel92/vim-autoformat'

" Taglist
"Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
Plug 'w0rp/ale'

" Auto Complete
"Plug 'Valloric/YouCompleteMe'

" Undo Tree
"Plug 'mbbill/undotree/'

" Other visual enhancement
"Plug 'nathanaelkane/vim-indent-guides'
"Plug 'itchyny/vim-cursorword'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
"Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }
"Plug 'theniceboy/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }
"Plug 'theniceboy/fzf-gitignore', { 'do': ':UpdateRemotePlugins' }
" Plug 'airblade/vim-gitgutter'
Plug 'cohama/agit.vim'
Plug 'kdheepak/lazygit.nvim'
Plug 'mg979/vim-visual-multi'
Plug 'AndrewRadev/switch.vim'

" Python
"Plug 'vim-scripts/indentpython.vim'


" Bookmarks
"Plug 'kshenoy/vim-signature'

" Other useful utilities
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
"Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
"Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line
Plug 'tpope/vim-commentary'
" File navigation


Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'kevinhwang91/rnvimr'
"Plug 'airblade/vim-rooter'
"Plug 'pechorin/any-jump.vim'
" Dependencies
"Plug 'MarcWeber/vim-addon-mw-utils'
"Plug 'kana/vim-textobj-user'
"Plug 'fadein/vim-FIGlet'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/vim-peekaboo'




Plug 'glacambre/firenvim'
call plug#end()


color snazzy
"let g:SnazzyTransparent = 1



" ===
" === NERDTree
" ===
"map ff :NERDTreeToggle<CR>
"let NERDTreeMapOpenExpl = ""
"let NERDTreeMapUpdir = ""
"let NERDTreeMapUpdirKeepOpen = "l"
"let NERDTreeMapOpenSplit = ""
"let NERDTreeOpenVSplit = ""
"let NERDTreeMapActivateNode = "i"
"let NERDTreeMapOpenInTab = "o"
"let NERDTreeMapPreview = ""
"let NERDTreeMapCloseDir = "n"
"let NERDTreeMapChangeRoot = "y"


" ==
" == NERDTree-git
" ==
"let g:NERDTreeIndicatorMapCustom = {
    "\ "Modified"  : "✹",
    "\ "Staged"    : "✚",
    "\ "Untracked" : "✭",
    "\ "Renamed"   : "➜",
    "\ "Unmerged"  : "═",
    "\ "Deleted"   : "✖",
    "\ "Dirty"     : "✗",
    "\ "Clean"     : "✔︎",
    "\ "Unknown"   : "?"
    "\ }

" ==
" == vim-multiple-cursor
" ==
let g:multi_cursor_use_default_mapping=1
"let g:multi_cursor_start_word_key      = '<c-k>'
"let g:multi_cursor_select_all_word_key = '<a-k>'
"let g:multi_cursor_start_key           = 'g<c-k>'
"let g:multi_cursor_select_all_key      = 'g<a-k>'
"let g:multi_cursor_next_key            = '<c-k>'
"let g:multi_cursor_prev_key            = '<c-p>'
"let g:multi_cursor_skip_key            = '<C-x>'
"let g:multi_cursor_quit_key            = '<Esc>'
" ===
" === coc.nvim
" ===


nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>
"noremap \g :Git
"noremap <c-g> :tabe<CR>:-tabmove<CR>:term lazygit<CR>
noremap <c-t> :set splitbelow<CR>:split<CR>:res 10<CR>:term<CR>i
noremap <c-g> :LazyGit<CR>
noremap <silent> <leader>m :verbose map 
" noremap <silent> <leader>im :verbose imap 
" noremap <silent> <leader>vm :verbose vmap 
nnoremap R :RnvimrToggle<CR>
nnoremap yall :%y+<CR>
" Make Ranger replace Netrw and be the file explorer
let g:rnvimr_enable_ex = 1

" Make Ranger to be hidden after picking a file
let g:rnvimr_enable_picker = 1

let g:rnvimr_action = {
            \ '<C-t>': 'NvimEdit tabedit',
            \ '<C-x>': 'NvimEdit split',
            \ '<C-v>': 'NvimEdit vsplit',
            \ 'gw': 'JumpNvimCwd',
            \ 'yw': 'EmitRangerCwd'
            \ }
let g:coc_global_presets = {
      \ 'icon.enableNerdfont': v:true
      \ }
nmap <C-f> :Telescope find_files<CR>
nmap ff :CocCommand explorer<CR>
map <LEADER>sw :Switch<CR>

nmap <silent><leader><leader>c :e $HOME/C920/readme.md<CR>:CocCommand explorer<CR>
source $HOME/.config/nvim/plug-config/coc.vim

