"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|
" Labib's VIMRC

let mapleader =" "

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'jreybert/vimagit'
Plug 'Valloric/YouCompleteMe'
Plug 'vimwiki/vimwiki'
Plug 'plasticboy/vim-markdown'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
call plug#end()

" Some basics:
	set nocompatible
	filetype plugin on
	set nosol
	syntax on
	set encoding=utf-8
	set number relativenumber
	set shiftwidth=4
	set tabstop=4
	set shell=/bin/bash
	set winheight=40

" Enable autocompletion:
	set wildmode=longest,list,full

" Goyo plugin makes text more readable when writing prose:
	map <leader>f :Goyo \| set linebreak<CR>

" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=en_us<CR>

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Open a terminal
	map <leader>t :terminal<CR>

" Readmes autowrap text:
	autocmd BufRead,BufNewFile *.md set tw=79

" Automatically deletes all trailing whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e

" Split characters
	set fillchars=vert:\│

" vim airline tabline
	let g:airline#extensions#tabline#enabled = 1
	let g:airline_powerline_fonts = 1
	let g:airline_theme = 'term'

" Cursor Shapes
	let &t_SI = "\<Esc>[6 q"
	let &t_SR = "\<Esc>[4 q"
	let &t_EI = "\<Esc>[2 q"
