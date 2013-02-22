syntax on
"Tabbing
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set smarttab

"Set no backup
set nobackup
set nowritebackup
set noswapfile
set backupdir=$HOME/.vim/backup
set backupcopy=yes
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=~/.vim/swap,~/tmp,.      " keep swp files under ~/.vim/swap
set undofile
set undodir=~/.vim/undo
set undoreload=10000

"Styling
set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
colorscheme Tomorrow-Night
set list listchars=tab:→\ ,trail:·

"Misc
set showmatch
set nowrap
set showcmd
set ruler
set number
set showmatch
set hidden
set modeline
set autoread
set nocompatible
set report=0
set cursorline
set scrolloff=4
set nofoldenable
set shell=/bin/zsh
set autowrite

"Search
set hlsearch
set incsearch
set ignorecase
set smartcase

"Status Line
set laststatus=2
set statusline=\%L%m%r%h\ %w\ \ pwd:\ %r%{getcwd()}%h\ \ \ Line:\ %l

"Pasting
noremap <leader>p :set paste<CR>"*p<CR>:set nopaste<CR>
noremap <leader>P :set paste<CR>"*P<CR>:set nopaste<CR>

"Vundle
set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kchmck/vim-coffee-script'
Bundle 'groenewege/vim-less'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'gmarik/vundle'
Bundle 'mattn/zencoding-vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sjl/gundo.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ervandew/supertab'
Bundle 'majutsushi/tagbar'
Bundle 'Lokaltog/vim-powerline'
Bundle 'mattn/gist-vim'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'tpope/vim-rails'
Bundle 'vim-scripts/buftabs'
Bundle 'gregsexton/gitv'
Bundle 'kana/vim-smartinput'
Bundle 'django.vim'
Bundle 'php.vim'


"Key Mapping
:nmap Z :tabprev<CR>
:nmap X :tabnext<CR>

"Filetype
au BufRead,BufNewFile *.module set filetype=php
au BufRead,BufNewFile *.install set filetype=php
au BufRead,BufNewFile *.test set filetype=php
au BufRead,BufNewFile *.inc set filetype=php
au BufRead,BufNewFile *.profile set filetype=php
au BufRead,BufNewFile *.view set filetype=php
au BufNewFile,BufRead *.less set filetype=less
au BufRead,BufNewFile *.js set ft=javascript syntax=javascript
au BufRead,BufNewFile *.json set ft=json syntax=javascript
au BufRead,BufNewFile *.twig set ft=htmldjango
au BufRead,BufNewFile *.rabl set ft=ruby

"Syntastic
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list=1
let g:syntastic_disabled_filetypes = ['html', 'sass']
let g:syntastic_stl_format = '[%E{Error 1/%e: line %fe}%B{, }%W{Warning 1/%w: line %fw}]'
let g:syntastic_jsl_conf = '$HOME/.jshintrc'
let g:syntastic_jshint_conf = '$HOME/.jshintrc'

" automatically jump to last known position in a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

" Clean whitespace
map <leader>s  :%s/\s\+$//<cr>:let @/=''<CR>