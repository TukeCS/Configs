" Initialize vim-plug
call plug#begin('~/.vim/plugged')

" GitHub Copilot
Plug 'github/copilot.vim'             " GitHub Copilot integration

" Language specific plugins
Plug 'rust-lang/rust.vim'             " Rust support
Plug 'ziglang/zig.vim'                " Zig support
Plug 'tpope/vim-dispatch'              " Async build support
Plug 'ollykel/v-vim'

" Python support
Plug 'Vimjas/vim-python-pep8-indent'   " Python indentation
Plug 'psf/black', { 'branch': 'main' } " Python code formatter

" Miscellaneous
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Syntax highlighting
Plug 'morhetz/gruvbox'                " Color scheme
call plug#end()

" General settings
set background=dark
colorscheme gruvbox
syntax on
set number
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
