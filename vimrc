"  °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
"  ° __   _(_)_ __ ___  _ __ ___            °
"  ° \ \ / / | '_ ` _ \| '__/ __|           °
"  °  \ V /| | | | | | | | | (__            °
"  °   \_/ |_|_| |_| |_|_|  \___|           °
"  °    Labib's VIMRC                       °
"  °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
let mapleader =" "
let maplocalleader ="`"

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'honza/vim-snippets'
Plug 'junegunn/goyo.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'maralla/completor.vim'
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
set list
set listchars=tab:▸\ ,
set background=dark
colorscheme solarized

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

" vim airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'
let g:airline_solarized_bg='dark'
let g:airline_skip_empty_sections = 1

" Cursor Shapes
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" autocompletion engine
let g:completor_clang_binary = '/usr/bin/clang'
let g:completor_python_binary = '/usr/bin/python'

" Filemanager , Tagbar, and other stuff
nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  '`'<CR>
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetsDirectories=['/home/mlabib/.vim/plugged/vim-snippets/UltiSnips']

" Greek Symbols
map! <localleader>GA Γ
map! <localleader>DE Δ
map! <localleader>TH Θ
map! <localleader>LA Λ
map! <localleader>XI Ξ
map! <localleader>PI Π
map! <localleader>SI Σ
map! <localleader>PH Φ
map! <localleader>PS Ψ
map! <localleader>OM Ω
map! <localleader>al α
map! <localleader>be β
map! <localleader>ga γ
map! <localleader>de δ
map! <localleader>ep ε
map! <localleader>ze ζ
map! <localleader>et η
map! <localleader>th θ
map! <localleader>io ι
map! <localleader>ka κ
map! <localleader>la λ
map! <localleader>mu μ
map! <localleader>xi ξ
map! <localleader>pi π
map! <localleader>rh ρ
map! <localleader>si σ
map! <localleader>ta τ
map! <localleader>ps ψ
map! <localleader>om ω
map! <localleader>ph ϕ
" Math symbols
map! <localleader>ll →
map! <localleader>hh ⇌
map! <localleader>kk ↑
map! <localleader>jj ↓
map! <localleader>= ∝
map! <localleader>~ ≈
map! <localleader>!= ≠
map! <localleader>!> ⇸
map! <localleader>~> ↝
map! <localleader>>= ≥
map! <localleader><= ≤
map! <localleader>0  °
map! <localleader>ce ¢
map! <localleader>*  •
map! <localleader>co ⌘
