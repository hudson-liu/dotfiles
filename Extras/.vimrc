highlight VertSplit cterm=NONE
highlight StatusLineNC cterm=NONE
let g:NERDTreeWinSize = 24
let g:slime_target = "kitty"
let g:slime_bracketed_paste = 1
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimwiki_list=[{'path': '~/Documents/Personal_Wiki/'}]
let g:NERDTreeShowHidden=1
let g:tagbar_left = 1
let g:tagbar_vertical = 25
let NERDTreeWinPos = 'left'
let mapleader = " "
set number relativenumber
set autochdir
set nocompatible
set number
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set encoding=utf-8
set fillchars+=vert:│
call plug#begin()
    Plug 'junegunn/fzf.vim'
    Plug 'preservim/nerdtree'
    Plug 'dense-analysis/ale'
    Plug 'ryanoasis/vim-devicons'
    Plug 'bryanmylee/vim-colorscheme-icons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'Valloric/YouCompleteMe'
    Plug 'lervag/vimtex'
    Plug 'vimwiki/vimwiki'
    Plug 'sheerun/vim-polyglot'
    Plug 'preservim/tagbar'
    Plug 'airblade/vim-gitgutter'
call plug#end()
" the following is for the ALE linter thingy which usually makes an all-white column that looks rly ugly lol
highlight SignColumn ctermbg=black guibg=#000000
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <C-b> :Buffers<CR>
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
nnoremap <F6> :NERDTreeToggle <CR> :TagbarToggle <CR>
nnoremap <Leader>t :tabnew<CR>
nnoremap <Leader>l :tabn<CR>
nnoremap <Leader>h :tabp<CR>
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

filetype plugin indent on
