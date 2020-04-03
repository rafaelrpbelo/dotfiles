" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'slim-template/vim-slim'
Plugin 'kien/ctrlp.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'raimondi/delimitmate'
Plugin 'mattn/emmet-vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'digitaltoad/vim-pug'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'posva/vim-vue'
Plugin 'tpope/vim-fugitive'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'edkolev/tmuxline.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'rhysd/vim-crystal'
call vundle#end()

filetype plugin indent on

set tabstop=2
set shiftwidth=2
set expandtab
set number
set noswapfile

syntax enable

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

" Airline
let g:airline_theme="solarized"
let g:airline_solarized_bg="dark"
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1

" Snippets settings let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-v>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" ControlP settings
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules " Ignore files

" Git settings
set updatetime=250

" Netrw settings
let g:netrw_liststyle = 3
