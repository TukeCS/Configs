" Initialize vim-plug
call plug#begin('~/.vim/plugged')

" GitHub Copilot
Plug 'github/copilot.vim'             " GitHub Copilot integration

" Language specific plugins
Plug 'rust-lang/rust.vim'             " Rust support
Plug 'ziglang/zig.vim'                " Zig support
Plug 'tpope/vim-dispatch'             " Async build support
Plug 'ollykel/v-vim'                  " V support

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
set clipboard=unnamedplus
set expandtab
set mouse=a


" Define F5 key mapping to run code in different languages in a terminal
autocmd FileType python command Run w | split | term python3 %
autocmd FileType rust command Run w | split | term cargo run
autocmd FileType zig command Run w | split | term zig run %
autocmd FileType v command Run w | split | term v run %
