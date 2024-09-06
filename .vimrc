syntax on
set autoindent
set smartindent
set copyindent
set smarttab
set ai
set si
set wrap

set expandtab
set shiftwidth=4
set tabstop=4

set number

if has('mouse')
	set mouse=a
endif

vnoremap <C-c> "+y
command W w
command WQ wq
command Q q
set wildmenu

filetype plugin on
filetype indent on

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
