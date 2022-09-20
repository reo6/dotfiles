syntax on
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set copyindent
set smarttab
set ai
set si
set wrap

set number

if has('mouse')
	set mouse=a
endif

vnoremap <C-c> "+y
command W w
command WQ wq
command Q q
set wildmenu
