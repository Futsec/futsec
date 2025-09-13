set nocompatible			                  " Doesn't make it compatible with Vi.
set noswapfile
set nowrap                              " Sets nowrap on line.
set foldcolumn=0                        " Place a width 1 margin on the left.

syntax on                               " Set syntax highlighting.
filetype plugin on					            " Do not detect the file type I am working with.
set number						                  " Sets the line numbers.
set relativenumber                      " Sets relative line numebrs.

set tabstop=2
set shiftwidth=2
set expandtab                           " Convert tabs to spaces.

filetype plugin indent on

set hlsearch                            " Highlight my search.
set cursorline                          " Highlights the line the cursor is on.
set nocursorline                        " No Highlights of the line.

set t_Co=256

"colorscheme habamax                     " Sets the theme for vim.
colorscheme default                      " Sets the theme for vim.

set wildmenu                            " Enable the wildmenu.

set colorcolumn=120                     " Sets a visible border to the right of the page as a marker.

" PLUGINS

call plug#begin('~/.vim/plugged')       " Initialize vim-plug

" Plugins go here
Plug 'alvan/vim-closetag'               " Auto-close HTML tags
Plug 'jiangmiao/auto-pairs'             " Optional: auto-close brackets/quotes
Plug 'mattn/emmet-vim'                  " Optional: Emmet for HTML expansion
Plug 'scrooloose/nerdtree'
call plug#end()

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx,*.ts,*.tsx,*.md'
