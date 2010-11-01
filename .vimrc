" maxboisvert.com
syntax on
au filetype ruby setl sw=2 sts=2 ts=2

set autoindent
set autoread
set autowriteall
set backspace=2
set clipboard=unnamed
set complete-=t
set completeopt=
set expandtab
set guioptions=c
set hidden
set history=1000
set incsearch
set linebreak
set mouse=
set nobackup
set noloadplugins
set nostartofline
set noswapfile
set nowrap
set ruler
set scrolloff=5
set shiftround
set shiftwidth=4
set showmatch
set showmode
set softtabstop=4
set tabstop=4
set undofile
set undolevels=1000
set visualbell

function! CleverTab() 
    if strpart(getline('.'), col('.') - 2, 1) =~ '\w' | return "\<C-P>" | else | return "\<Tab>"
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>

function! Comment()
    let d = { 'haskell': '--', 'java': '//', 'javascript': '//', 'prolog': '%', 'ruby': '#', 'tex': '%', 'vim': '"' }
    if has_key(d, &ft) | exe "s@^@".d[&ft]." @ | s@^".d[&ft]." ".d[&ft]." @@e" | endif
endfunction
noremap <silent> <Leader>c :call Comment()<CR>

