" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'raimondi/delimitmate'
Plugin 'mattn/emmet-vim'
Plugin 'honza/vim-snippets'
Plugin 'digitaltoad/vim-pug'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'sheerun/vim-polyglot'
Plugin 'ap/vim-css-color'
Plugin 'zxqfl/tabnine-vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'styled-components/vim-styled-components'
call vundle#end()

set nocompatible
set tabstop=2
set shiftwidth=2
set expandtab
set number
set noswapfile
set colorcolumn=120
set backupcopy=yes

" Visibility helpers
"set cursorline
"set cursorcolumn

syntax enable

filetype plugin indent on

" Set Gemfile as ruby file
autocmd BufNewFile,BufRead Gemfile set syntax=ruby

" Searching
set hlsearch    " Set highlight search
set incsearch   " Set searchs dynamic
set ignorecase  " case insensitive search
set smartcase   " for capital letter

" Maps
nnoremap <F1> 1gt
nnoremap <F2> 2gt
nnoremap <F3> 3gt
nnoremap <F4> 4gt
nnoremap <F5> 5gt
nnoremap <F6> 6gt
nnoremap <PageUp> gt
nnoremap <PageDown> gT

" Colors
set t_Co=256
set t_ut=
let g:solarized_termtrans = 1
let g:solarized_termcolors = 256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
set background=dark
colorscheme solarized

" Fix gitgutter left sidebar color
highlight SignColumn ctermbg=235
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_set_sign_backgrounds = 0

" ControlP settings
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules " Ignore files
let g:ctrlp_user_command = ['.git/', 'git ls-files --cached --others  --exclude-standard %s']

" Git settings
set updatetime=250

" Netrw settings
let g:netrw_liststyle = 3

" Coc
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]
