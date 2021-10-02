"
"  ██ ████     ██ ██ ██████████    ██      ██ ██ ████     ████
" ░██░██░██   ░██░██░░░░░██░░░    ░██     ░██░██░██░██   ██░██
" ░██░██░░██  ░██░██    ░██       ░██     ░██░██░██░░██ ██ ░██
" ░██░██ ░░██ ░██░██    ░██       ░░██    ██ ░██░██ ░░███  ░██
" ░██░██  ░░██░██░██    ░██        ░░██  ██  ░██░██  ░░█   ░██
" ░██░██   ░░████░██    ░██     ██  ░░████   ░██░██   ░    ░██
" ░██░██    ░░███░██    ░██    ░██   ░░██    ░██░██        ░██
" ░░ ░░      ░░░ ░░     ░░     ░░     ░░     ░░ ░░         ░░
"

" {{{ Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'mileszs/ack.vim'
Plug 'junegunn/vim-plug'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'scrooloose/nerdtree', { 'on' : 'NERDTreeToggle' }
Plug 'vim-syntastic/syntastic'
Plug 'preservim/tagbar'
Plug 'rust-lang/rustfmt'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'lervag/vimtex'
Plug 'tikhomirov/vim-glsl'
Plug 'yegappan/greplace'
Plug 'tpope/vim-fugitive'
Plug 'terryma/vim-smooth-scroll'
Plug 'joshdick/onedark.vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'moll/vim-bbye'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'Shirk/vim-gas'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'

call plug#end()
" }}}

" {{{ Settings
syntax enable				" Enables syntax highlighing
set list				" Show tabs and spaces
set hidden				" Required to keep multiple buffers open multiple buffers
set nowrap				" Display long lines as just one line
set encoding=utf-8			" The encoding displayed
set pumheight=10			" Makes popup menu smaller
set fileencoding=utf-8			" The encoding written to file
set ruler				" Show the cursor position all the time
set cmdheight=2				" More space for displaying messages
set iskeyword+=-			" treat dash separated words as a word text object"
set splitbelow				" Horizontal splits will automatically be below
set splitright				" Vertical splits will automatically be to the right
set t_Co=256				" Support 256 colors
set conceallevel=0			" So that I can see `` in markdown files
set smartindent				" Makes indenting smart
set autoindent				" Good auto indent
set laststatus=0			" Always display the status line
set number				" Line numbers
set relativenumber			" Having both numebr and relativenumber enabled enables hybrid line number mode
set cursorline				" Enable highlighting of the current line
set background=dark			" tell vim what the background color looks like
set nobackup				" This is recommended by coc
set nowritebackup			" This is recommended by coc
set updatetime=300			" Faster completion
set timeoutlen=500			" By default timeoutlen is 1000 ms
set formatoptions-=cro			" Stop newline continution of comments
set tabstop=8    			" tab width 8
set shiftwidth=8 			" tab width 8
set listchars=tab:▸·,trail:·		" tab marker
set clipboard=unnamedplus		" Copy paste between vim and everything else
set foldmethod=marker

filetype plugin indent on		" rust

let NERDTreeShowHidden = 1  " Show hidden files

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:vimtex_view_general_viewer = 'zathura'

" Syntax Highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

let g:indent_guides_enable_on_vim_startup = 1

let g:rustfmt_autosave = 1

" Set fzf keybind to ctrl+p
nmap <C-p> :Files<CR>
" Set fzf buffers keybind to ctrl+e
nmap <C-g> :Buffers<CR>
let g:fzf_action = { 'ctrl-e': 'edit' }

au! BufWritePost $MYVIMRC source %		" auto source when writing to init.vm alternatively you can run :source $MYVIMRC
" }}}

" {{{ Commands
" Allow ACK in vim
if executable('ag')
 let g:ackprg = 'ag --vimgrep'
endif
" Add TODO command
command Todo Ack! 'TODO\|FIXME'
" }}}

" {{{ Keybinds
" use alt+hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

nmap <F8> :TagbarToggle<CR>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Set ctrl-s to increment number, as ctrl-a is used for tmux
nnoremap <C-s> <C-a>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Close buffer without messung with window layout
nnoremap <C-q> :Bdelete<CR>

" Map esc to jk
:imap jk <Esc>

" Smooth scroll
nnoremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
nnoremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
nnoremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
nnoremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

nnoremap <A-b> :! cargo build<CR>
nnoremap <A-v> :! cargo test<CR>

" toggle options
nnoremap <A-t> :NERDTreeToggle<CR>

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" }}}

" {{{ Theme
set termguicolors
lua require'colorizer'.setup()

let g:airline_theme='onedark'

colorscheme onedark
" }}}

