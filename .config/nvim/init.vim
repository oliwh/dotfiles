" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'Townk/vim-autoclose'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'p00f/nvim-ts-rainbow'
Plug 'cespare/vim-toml'
Plug 'navarasu/onedark.nvim'
Plug 'ap/vim-css-color'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'lewis6991/gitsigns.nvim'
Plug 'dense-analysis/ale'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }


" List ends here. Plugins become visible to Vim after this call.
call plug#end()

syntax enable


" Set colour scheme
let g:onedark_config = { 'style': 'darker', }
colorscheme onedark


" Lualine
lua << END
require('lualine').setup {
  options = {
    theme = 'onedark',
    component_separators = ' /',
    section_separators = { left = '', right = '' }
    }
}
END


" Gitsigns
lua require('gitsigns').setup()

" TS Rainbow
lua << END
require("nvim-treesitter.configs").setup {
  highlight = {},
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil, 
  }
}
END
let g:rainbow_active = 1


" Nerdtree
let NERDTreeShowHidden = 1
nnoremap <C-t> :NERDTreeToggle<CR>

" tab settings
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>
" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Bufferline
set termguicolors
lua << EOF
require("bufferline").setup{}
EOF
