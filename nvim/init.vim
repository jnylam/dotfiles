" Configuration file for Nvim

" Load plugins
source ~/.config/nvim/plugins.vim

" ---------------------------------------------------------
" Leader key
" ---------------------------------------------------------

" set leader key
let mapleader = ' '

" leader key shortcuts



" ---------------------------------------------------------
"  color
" ---------------------------------------------------------

" set the color scheme
set termguicolors
set background=light
colorscheme pencil

" enable spell checking
set spell spelllang=en_us
highlight clear SpellBad
highlight SpellBad gui=underline,bold
" disable spell checking in help
autocmd FileType help setlocal nospell

" ---------------------------------------------------------
" lightline status line
" ---------------------------------------------------------

" remove redundant default vim mode information
set noshowmode

" set matching color scheme
let g:lightline = { 'colorscheme': 'solarized', }

" ---------------------------------------------------------
" visual cues
" ---------------------------------------------------------

" enable line numbering
set relativenumber
set number

" highlight the 80th column of text
set colorcolumn=80

" show whitespace
set listchars=tab:≫□,trail:□,extends:⟩,precedes:⟨,nbsp:¤
set list

" ---------------------------------------------------------
" indentation
" ---------------------------------------------------------

" use spaces instead of tabs
set expandtab

" set tabs to be 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4

" ---------------------------------------------------------
" search
" ---------------------------------------------------------

" search is case-insensitive unless there are upper-case letters
set ignorecase
set smartcase

" turn off search highlighting
set nohlsearch

" ---------------------------------------------------------
" Netrw directory browser
" ---------------------------------------------------------

" remove banner
let g:netrw_banner=0

" ---------------------------------------------------------
" window splitting
" ---------------------------------------------------------

" put new buffer to the right of current buffer
set splitright

" put new buffer below current buffer
set splitbelow

" ---------------------------------------------------------
" terminal mode
" ---------------------------------------------------------

" map <Esc> to exit terminal mode
tnoremap <Esc> <C-\><C-n>

" map window navigation command to those of normal mode
tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-w>l <C-\><C-n><C-w>l

" turn off spell checking
autocmd TermOpen * setlocal nospell

" ---------------------------------------------------------
"  CtrlP
" ---------------------------------------------------------

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
