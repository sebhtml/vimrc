" maxboisvert.com
syntax on
runtime mswin.vim
au filetype ruby setl sw=2 sts=2 ts=2

set autoindent
set autoread
set autowriteall
set backspace=2
set complete-=t
set expandtab
set guioptions=c
set hidden
set history=1000
set incsearch
set linebreak
set mouse=a
set nobackup
set noloadplugins
set nostartofline
set noswapfile
set nowrap
set ruler
set shiftwidth=4
set showmatch
set showmode
set softtabstop=4
set tabstop=4
set undofile
set undolevels=1000

function! CleverTab() 
    if strpart(getline('.'), col('.') - 2 , 1) =~ '\w' | return "\<C-P>" | else | return "\<Tab>"
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>

