"enable file type detection
filetype on

"enable plugins & load plugin for detected file type
filetype plugin indent on

colorscheme everblush
syntax on

"set cursorline
"set cursorcolumn

runtime macros/matchit.vim

"set tabstop=4
set expandtab

set incsearch
set autoindent
set hlsearch

set wildmenu
set wildmode=list:longest

set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.exe,*.flv,*.img,*.xlsx


" PLUGINS -------------------
"
call plug#begin('~/.vim/plugged')

  Plug 'dense-analysis/ale'
  Plug 'preservim/nerdtree'
  Plug 'sainnhe/everforest'
  Plug 'mangeshrex/everblush.vim'
  call plug#end()

  " }}}
" MAPPINGS ------------------
"
let mapleader = ","
"jump to last cursor position
nnoremap <leader>, ``
"print to default printer
"view available printers: lpstat -v
"set default printer: lpopoptions -d <printer_name>
nnoremap <silent> <leader>p :%w !lp<CR>
"use space bar to initiate commands
nnoremap <space> :
"don't automatically enter insert mode after entering a new line
nnoremap o o<esc>
nnoremap O O<esc>

"yank from cursor to end of line
nnoremap Y y$

"easier window navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

inoremap jk <esc>
"
" VIMSCRIPT -----------------
" enable code folding
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END

" STATUS --------------------
