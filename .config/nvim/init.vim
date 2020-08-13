"""""""""""""""""""
"  LABIB's vimrc  "
"""""""""""""""""""

let mapleader =" "
let maplocalleader ="`"

call plug#begin('~/.vim/plugged')
Plug '/usr/bin/fzf'
Plug 'tpope/vim-sensible'
Plug 'tek256/simple-dark'
Plug 'tpope/vim-fugitive'
Plug 'huyvohcmc/atlas.vim'
Plug 'Jorengarenar/vim-darkness'
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
Plug 'andreypopp/vim-colors-plain'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'widatama/vim-phoenix'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'dag/vim-fish'
Plug 'junegunn/goyo.vim'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'dylanaraps/wal.vim'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'cespare/vim-toml'
Plug 'jpalardy/vim-slime'
Plug 'rust-lang/rust.vim'
Plug 'mhinz/vim-startify'
Plug 'plasticboy/vim-markdown'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" Some basics:
set nocompatible
set title
set mouse=a
set noshowmode
filetype plugin on
set nosol
syntax on
set encoding=utf-8
set number relativenumber
set shiftwidth=4
set tabstop=4
set expandtab
set shell=/bin/bash
set list
set listchars=tab:▸\ ,
"set cursorline
"set background=dark
colorscheme atlas

" Enable autocompletion:
set wildmode=longest,list,full

" Goyo plugin makes text more readable when writing prose:
map <leader>f :Goyo \| set linebreak<CR>

" Spell-check set to <leader>o, 'o' for 'orthography':
map <leader>o :setlocal spell! spelllang=en_gb<CR>
hi clear SpellBad
hi SpellBad cterm=underline
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
"hi NonText guifg=bg
" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Readmes autowrap text:
autocmd BufRead,BufNewFile *.md set tw=79

" Split characters
set fillchars=vert:\│

" autocompletion engine
"let g:completor_clang_binary = '/usr/bin/clang'
"let g:completor_python_binary = '/usr/bin/python3'
"let g:completor_racer_binary = '/home/labib/.cargo/bin/racer'

" Filemanager , Tagbar, and other stuff
nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  '`'<CR>
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetsDirectories=['/home/labib/.vim/plugged/vim-snippets/UltiSnips']

" tex configs
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
let g:vim_markdown_folding_disabled = 1

" statusline
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='minimalist'
"let g:airline_powerline_fonts = 1
let g:lightline = {
      \ 'colorscheme': 'atlas',
      \ }
