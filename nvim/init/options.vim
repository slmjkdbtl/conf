" wengwengweng

set number
set ruler
set noexpandtab
set smarttab
set termguicolors
set noshowmode
set title
set showcmd
set visualbell
set nowrap
set showmatch
set smartcase
set hidden
set noswapfile
set autoread
set autoindent
set incsearch
set lazyredraw
set wildmenu
set wildignorecase
set ignorecase
set cursorline
set hlsearch
set guioptions+=!
set showtabline=2
set path+=**
set scrolloff=3
set signcolumn=yes
set display+=lastline
set diffopt+=iwhite
set laststatus=2
set tabstop=4
set shiftwidth=4
set mouse=a
set tags+=./.tags;,.tags
set whichwrap=b,h,l,<,>,[,]
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk
set guicursor=n-v-c-sm-ci-ve-r-cr-o-i:block
set shell=/usr/local/bin/fish
set wildignore=*/.git/*,*/.svn/*,*/.cache/*,*/.tmp/*,*/node_modules/*
set wildignore+=.DS_Store
set wildignore+=*.so,*.o,*.out,*.swp,*.zip,*.app,*.exe,*.dll,*~
set wildignore+=*.png,*.jpg,*.gif,*.ico,*.icns,*.ase
set wildignore+=*.mov,*.mp4,*.avi,*.mkv
set wildignore+=*.mp3,*.wav,*.ogg
set wildignore+=.tags,*.min.*,*.map
exec 'set list lcs=tab:\|\ '
filetype plugin indent on
syntax enable

if has("gui_macvim")

	set showmode
	set laststatus=0
	set signcolumn=no
	set guifont=hack:h14
	set nolist
	set macmeta

end

