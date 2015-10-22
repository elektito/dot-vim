" Load pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Don't be compatible with vi; Sorry dude!
set nocompatible

" Enable syntax coloring
syntax enable

" Set the color scheme
colorscheme twilight

" General tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Store swap files in fixed location, not current directory.
set dir=~/.vimswap//,/var/tmp//,/tmp//,.

" Create the swap directory if it doesn't exist
silent execute '!mkdir -p ~/.vimswap/'

" Keep 3 lines of context before and after the current line while scrolling.
set scrolloff=3

" Disable arrow keys in insert, normal and visual modes
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
vnoremap  <Up>     <NOP>
vnoremap  <Down>   <NOP>
vnoremap  <Left>   <NOP>
vnoremap  <Right>  <NOP>

" Enable filetype plugins and language based indenting
filetype plugin indent on

" C indenting options

" Indent size = 2
set cinoptions+=>2

" Don't indent function return type
set cinoptions+=t0

" Put cases on the same indentation level as switch
set cinoptions+=:0

" No indenting for C++ namespaces
set cinoptions+=N-s

" Put C++ scope labels on the same level as class
set cinoptions+=g0

" Remove trailing spaces before saving
autocmd BufWritePre * :%s/\s\+$//e
