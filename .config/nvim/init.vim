" Neovim Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Managing Plugins {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Required File: ~/config/nvim/autoload/plug.vim
" Commands: PlugInstall, PlugUpdate, PlugClean, PlugUpgrade, PlugStatus

call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-commentary'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Settings {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let $LANG = 'en_US'

let g:netrw_banner = 0
let g:netrw_keepdir = 0
let g:netrw_liststyle = 4

set langmenu=en_US
set spelllang=en_us,de_de
set encoding=utf-8
set fileencoding=utf-8
set path=**
set fillchars+=vert:\ 
set foldmethod=marker
set backspace=indent,eol,start
set mouse=ar
set tabstop=4
set shiftwidth=4
"set foldlevel=99
set omnifunc=syntaxcomplete#Complete
set listchars=tab:▸\ ,eol:¬
set list
set smarttab
set noexpandtab
set wildmenu
set incsearch
set hidden
set nobackup
set noswapfile
set ignorecase
set smartcase
set novb
set showcmd
set ttimeout
set nohlsearch
set number relativenumber
set splitbelow splitright
set autoindent

syntax enable
colorscheme murphy
" colorscheme wombatty

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key Mappings {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:mapleader = ","

nnoremap 'V :e ~/.config/nvim/init.vim<CR>
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap d- d$
nnoremap v- v$h
nnoremap c- c$
nnoremap y- y$
vnoremap < <gv 
vnoremap > >gv 
nnoremap v> <C-v>>gv
nnoremap <Space> /
nnoremap <C-Space> ?
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-t> :tabnew<CR>
" vnoremap <C-c> "+y
" nnoremap <C-p> "*P
" vnoremap <C-p> "*P
nnoremap <C-s> :w<CR>
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <M-C-Right> :resize +3<CR>
noremap <silent> <M-C-Left> :resize -3<CR>

nnoremap <Leader>u gUiw
nnoremap <Leader>l guiw
vnoremap <Leader>u gU
vnoremap <Leader>l gu
nnoremap <Leader>s :%s///g<Left><Left><Left>
vnoremap <Leader>s :s///g<Left><Left><Left>
nnoremap <Leader>z :g//z#.2<Left><Left><Left><Left><Left>
nnoremap <Leader>f za
nnoremap <Leader>F zA
nnoremap <Leader>of zR
nnoremap <Leader>cf zM
nnoremap <Leader><Space> i<Space><esc>
nnoremap <Leader>nn :norm 
vnoremap <Leader>nn :norm 
nnoremap <Leader>, A;<esc>
inoremap <Leader>, <C-o>A;
nnoremap <Leader>cd :cd ~<CR>
nnoremap <Leader>v :source ~/.config/nvim/init.vim<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q!<CR>
nnoremap <Leader>x :wq!<CR>
nnoremap <Leader>th <C-w>t<C-w>H
nnoremap <Leader>tk <C-w>t<C-w>K
nnoremap <Leader>j :norm O<esc>j
nnoremap <Leader>dt :pu=strftime('%c')<CR>
inoremap <Leader>dt <C-r>=strftime('%c')<CR>
nnoremap <Leader>h viw
nnoremap <Leader>H viW
nnoremap <Leader>ex :Exp<CR>
nnoremap <Leader>ta <C-]>
nnoremap <Leader>ne :lne<CR>
nnoremap <Leader>pr :lp<CR>
nnoremap <Leader>r yiw:%s/<C-r>0//g<Left><Left>
vnoremap <Leader>r y:<C-u>%s/<C-r>0//g<Left><Left>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Custom Commands {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! PI PlugInstall
command! PC PlugClean

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Auto Commands {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup save_cursor_position
au! BufReadPost * call setpos(".", getpos("'\""))
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Settings {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ----------------------- Status Line -------------------- {{{2
"
let g:lightline = { 'colorscheme' : 'wombat' }

set laststatus=2
set noshowmode

" ----------------------- FZF ---------------------------- {{{2
"
" Dependencies: fzf, bat, perl

nnoremap -f :Files 
nnoremap -h :Files ~/<CR>
nnoremap -. :exe ":Files " . expand("%:h")<CR>
nnoremap -b :Buffers<CR>
nnoremap -t :Tags<CR>
nnoremap -m :Marks<CR>
nnoremap -c :History:<CR>
nnoremap -l :History<CR>

" ----------------------- Visual-Multi ------------------- {{{2
"
let g:VM_leader = '\'
let g:VM_maps = {}
let g:VM_maps["Select Cursor Down"] = '<M-C-Down>'
let g:VM_maps["Select Cursor Up"] = '<M-C-Up>'

" }}} foldmethod=marker required

