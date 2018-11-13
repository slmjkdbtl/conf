" wengwengweng

let g:syntax_list = get(g:, 'syntax_list', [])

call ft#add('*.vim', 'vim', '', '\"\ %s')
call ft#add('*.ms', 'nroff', '', '%s')
call ft#add('muttrc,*.muttrc', 'neomuttrc', '', '#\ %s')
call ft#add('*.hx', 'haxe', 'jdonaldson/vaxe', '//\ %s')
call ft#add('*.lua', 'lua', 'tbastos/vim-lua', '--\ %s')
call ft#add('*.rs', 'rust', 'rust-lang/rust.vim', '//\ %s')
call ft#add('*.ck', 'chuck', 'wilsaj/chuck.vim', '//\ %s')
call ft#add('*.scd', 'supercollider', 'supercollider/scvim', '//\ %s')
call ft#add('*.js', 'javascript', 'pangloss/vim-javascript', '//\ %s')
call ft#add('*.ts', 'typescript', 'leafgarland/typescript-vim', '//\ %s')
call ft#add('*.fish', 'fish', 'dag/vim-fish', '#\ %s')
call ft#add('*.html', 'html', 'othree/html5.vim', '<!--\ %s\ -->')
call ft#add('*.cpp', 'cpp', 'octol/vim-cpp-enhanced-highlight', '//\ %s')
call ft#add('*.pde', 'processing', 'sophacles/vim-processing', '//\ %s')
call ft#add('*.ino', 'arduino', '', '//\ %s')
call ft#add('*.elm', 'elm', '', '--\ %s')
call ft#add('*.go', 'go', 'fatih/vim-go', '//\ %s')
call ft#add('*.carp', 'carp', 'hellerve/carp-vim', ';;\ %s')
call ft#add('*.hs', 'haskell', 'neovimhaskell/haskell-vim', '--\ %s')
call ft#add('*.pug', 'pug', 'digitaltoad/vim-pug', '//-\ %s')
call ft#add('*.rb', 'ruby', 'vim-ruby/vim-ruby', '#\ %s')
call ft#add('*.swift', 'swift', 'keith/swift.vim', '#\ %s')
call ft#add('*.ex', 'elixir', 'elixir-editors/vim-elixir', '#\ %s')
call ft#add('*.{glsl,vert,frag}', 'glsl', 'tikhomirov/vim-glsl', '//\ %s')
call ft#add('*.scss', 'scss', 'cakebaker/scss-ft.vim', '//\ %s')
call ft#add('*.json', 'json', 'elzr/vim-json', '//\ %s')
call ft#add('*.yml', 'yaml', 'stephpy/vim-yaml', '#\ %s')
call ft#add('*.toml', 'toml', 'cespare/vim-toml', '#\ %s')
call ft#add('*.{md,markdown}', 'markdown', 'plasticboy/vim-markdown', '%s')
call ft#add('*.{scpt,applescript}', 'applescript', 'mityu/vim-applescript', '--\ %s')
call ft#add('*/nginx/*.conf', 'nginx', 'chr4/nginx.vim', '#\ %s')
call ft#add('Caddyfile', 'caddyfile', 'isobit/vim-caddyfile', '#\ %s')
call ft#add('tmux.conf', 'tmux', 'ericpruitt/tmux.vim', '#\ %s')
call ft#load()

augroup FileTypeConfig

	autocmd FileType *
				\ setlocal formatoptions-=cro|
				\ setlocal noexpandtab|
				\ setlocal tabstop=4

augroup END

