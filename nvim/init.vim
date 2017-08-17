" Configuration file for Nvim

" load plugins
source ~/.config/nvim/plugins.vim

" ---------------------------------------------------------
" leader key
" ---------------------------------------------------------

" set leader key
let mapleader = ' '

" leader key shortcuts


" ---------------------------------------------------------
" pencil - color scheme plugin
" ---------------------------------------------------------

" set the color scheme
set termguicolors
set background=light
colorscheme pencil

" ---------------------------------------------------------
" lightline - status line plugin
" ---------------------------------------------------------

" hide redundant default vim mode information
set noshowmode

" lightline config
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [['mode'], ['fugitive', 'filename']],
      \   'right': [['lineinfo'], ['percent']],
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightlineFugitive',
      \   'filename': 'LightlineFilename',
      \ },
      \ }

function! LightlineModified()
  return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
  let locksymbol = "\ue0a2" " Powerline font
  return &ft !~? 'help' && &readonly ? locksymbol : ''
endfunction

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
       \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
       \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineFugitive()
  if exists('*fugitive#head')
    let branchsymbol = "\ue0a0 "  " Powerline font
    let branch = fugitive#head()
    return branch !=# '' ? branchsymbol.branch : ''
  endif
  return ''
endfunction

" ---------------------------------------------------------
"  CtrlP - file search plugin
" ---------------------------------------------------------

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" ---------------------------------------------------------
" editor settings to be disabled in non-editor mode
" ---------------------------------------------------------

" enable spell checking
set spell spelllang=en_us

" less jarring highlighting of mispellings
highlight clear SpellBad
highlight SpellBad gui=underline,bold

" show whitespace
set listchars=tab:≫□,trail:□,extends:⟩,precedes:⟨,nbsp:¤
set list

" show the 80th column of text
set colorcolumn=80

" ---------------------------------------------------------
" more editor settings
" ---------------------------------------------------------

" use mouse!
set mouse=a

" enable line numbering
set relativenumber
set number

" use spaces instead of tabs
set expandtab

" set tabs to be 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4

" scroll ahead
set scrolloff=3

" automatically reload changed files
set autoread

" no auto indent for tex files
autocmd FileType tex setlocal wrap linebreak noautoindent nocindent nosmartindent indentexpr&

" ---------------------------------------------------------
" search
" ---------------------------------------------------------

" search is case-insensitive unless there are upper-case letters
set ignorecase
set smartcase

" turn off search highlighting
set nohlsearch

" ---------------------------------------------------------
" window splitting
" ---------------------------------------------------------

" put new buffer to the right of current buffer
set splitright

" put new buffer below current buffer
set splitbelow

" ---------------------------------------------------------
" netrw directory browser
" ---------------------------------------------------------

" remove banner
let g:netrw_banner=0

" disable spell checking
autocmd FileType netrw setlocal nospell

" hide whitespace
autocmd FileType netrw setlocal nolist

" hide colorcolumn
autocmd FileType netrw setlocal colorcolumn=

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

" disable spell checking
autocmd TermOpen * setlocal nospell

" hide whitespace
autocmd TermOpen * setlocal nolist

" hide colorcolumn
autocmd TermOpen * setlocal colorcolumn=

" ---------------------------------------------------------
" help mode
" ---------------------------------------------------------

" disable spell checking in help
autocmd FileType help setlocal nospell

" hide whitespace
autocmd FileType help setlocal nolist

" hide colorcolumn
autocmd FileType help setlocal colorcolumn=
