autocmd filetype python nnoremap <C-d> :w <bar> exec '!python '.shellescape('%')<CR>
autocmd filetype c nnoremap <C-d> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <C-d> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
let g:python_highlight_all = 1
syntax on
set number
map <C-a> :ALEToggle<CR>
map <C-o> :NERDTreeToggle<CR>
map <C-s> :REPLToggle<CR>
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'vim-scripts/Align'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/ack.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'editorconfig/editorconfig-vim'
Plug 'sillybun/vim-repl'
Plug 'vim-python/python-syntax'
Plug 'pearofducks/ansible-vim'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'iamcco/markdown-preview.nvim'
Plug 'goerz/jupytext.vim'
call plug#end()
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
