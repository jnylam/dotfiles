" Vim plugins managed by vim-plug

call plug#begin('~/.config/nvim/plugged')
  " Gotham colorscheme
  Plug 'whatyouhide/vim-gotham'
  " Pencil colorscheme
  Plug 'reedes/vim-colors-pencil'
  " Lightline status line: lighterweight, more customizable than Airline
  Plug 'itchyny/lightline.vim'
  " Use git in vim
  Plug 'tpope/vim-fugitive'
  " Show git changes in gutter
  Plug 'airblade/vim-gitgutter'
  " Fuzzy file search
  Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

