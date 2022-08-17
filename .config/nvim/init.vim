" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'Townk/vim-autoclose'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'p00f/nvim-ts-rainbow'
Plug 'ap/vim-css-color'
Plug 'cespare/vim-toml'
Plug 'navarasu/onedark.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Set colour scheme
let g:onedark_config = {
    \ 'style': 'darker',
\}
colorscheme onedark

" Setup lualine
lua << END
require('lualine').setup {
  options = {
    theme = 'auto'
    -- ... your lualine config
  }
}
END
