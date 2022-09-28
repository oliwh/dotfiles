" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'Townk/vim-autoclose'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'p00f/nvim-ts-rainbow'
Plug 'cespare/vim-toml'
Plug 'navarasu/onedark.nvim'
Plug 'ap/vim-css-color'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'lewis6991/gitsigns.nvim'
Plug 'dense-analysis/ale'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

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
rainbow = {
    enable = true,
    extended_mode = true, 
  }
END

" Nerdtree
let NERDTreeShowHidden = 1
nnoremap <C-t> :NERDTreeToggle<CR>
