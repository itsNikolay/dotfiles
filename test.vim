call plug#begin('~/.vim/plugged')
Plug 'neovim/nvim-lspconfig'
call plug#end()

lua << EOF
require'lspconfig'.solargraph.setup{}
EOF
