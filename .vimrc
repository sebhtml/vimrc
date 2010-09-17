" maxboisvert.com
syntax on
runtime mswin.vim
filetype plugin on
au filetype * setl nowrap
au filetype * let b:did_indent = 1
au filetype ruby setl sw=2 sts=2 ts=2

set autoindent
set autoread
set autowriteall
set backspace=2
set complete-=t
set expandtab
set guioptions=c
set hidden
set history=100
set incsearch
set linebreak
set mouse=a
set nobackup
set nostartofline
set noswapfile
set wrap
set ruler
set shiftwidth=4
set showmode
set softtabstop=4
set tabstop=4
set undolevels=100

function! CleverTab() 
    if strpart(getline('.'), col('.') - 2 , 1) =~ '\w' | return "\<C-P>" | else | return "\<Tab>"
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>

