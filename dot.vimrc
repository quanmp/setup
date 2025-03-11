" quan custom vim setting

" change Escape key cmd to jk. some articles on web missing the <Esc> causing errors.
inoremap jk <Esc>

" change leader key from default /
let mapleader = "‘"

syntax on " highlight syntax
set number " show line numbers
set noswapfile " disable the swapfile
"set hlsearch " highlight all results
set ignorecase " ignore case in search
set incsearch " show search results as you type
set cursorline
set laststatus=2
set cursorline
set cursorcolumn
set colorcolumn=80
"set statusline=%f%=%{&filetype}

syntax on
"set background=dark
filetype indent on

set showmatch " show matching brackets
set ruler " show loc in file, line num
set smarttab " auto tabs for certain code

"python setting
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

set spell spelllang=en_us
set nospell

"auto run python file with f5
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType java map <buffer> <F6> :w<CR>:exec '!javac' shellescape(@%, 1)<CR>:exec '!java' shellescape(@%, 1)<CR>

" Automatically closing braces
inoremap {<CR> {<CR>}<Esc>ko<tab>
inoremap [<CR> [<CR>]<Esc>ko<tab>
inoremap (<CR> (<CR>)<Esc>ko<tab>

" auto indent
"set autoindent " ctr-d to un-indent
filetype indent on
"set smartindent
autocmd BufRead,BufWritePre *.sh normal gg=G
"set autoindent


