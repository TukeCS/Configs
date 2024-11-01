" Initialize vim-plug
call plug#begin('~/.vim/plugged')

" GitHub Copilot
Plug 'github/copilot.vim'             " GitHub Copilot integration

" Language-specific plugins
Plug 'rust-lang/rust.vim'             " Rust support
Plug 'ziglang/zig.vim'                " Zig support
Plug 'tpope/vim-dispatch'             " Async build support
Plug 'ollykel/v-vim'                  " V support

" Python support
Plug 'Vimjas/vim-python-pep8-indent'   " Python indentation
Plug 'psf/black', { 'branch': 'main' } " Python code formatter
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " LSP support

" Miscellaneous
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Syntax highlighting
Plug 'airblade/vim-gitgutter'        " Git diff in gutter
Plug 'preservim/nerdtree'            " File explorer
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install' } " Fuzzy finder
Plug 'junegunn/fzf.vim'               " FZF integration
Plug 'justinmk/vim-sneak'             " Easy motion
Plug 'Shadorain/shadotheme'

call plug#end()

" General settings
colorscheme shado
syntax on
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4              " Make tabbing feel like spaces
set expandtab
set clipboard=unnamedplus       " Use system clipboard
set mouse=a
set hidden                      " Allow switching buffers without saving

let g:sneak#label = 1            " Use single character labels

" Enable file type detection and plugin
filetype plugin indent on

" Define F5 key mapping to run code in different languages in a terminal
autocmd FileType python command! Run w | split | term python3 %
autocmd FileType rust command! Run w | split | term cargo run
autocmd FileType zig command! Run w | split | term zig run %
autocmd FileType v command! Run w | split | term v run %

" Additional key mappings
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-p> :FZF<CR>
nnoremap <C-s> :w<CR>

" Rust Language Server configuration
let g:coc_global_extensions = ['coc-rust-analyzer']

" Python Language Server configuration
let g:coc_global_extensions += ['coc-pyright']

" Additional settings
set autoindent                   " Enable auto-indentation
set smartindent                  " Enable smart indentation
