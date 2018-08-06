" wengwengweng

" unmap
mapclear
map <tab> <nop>
map <space> <nop>
map <return> <nop>
map <backspace> <nop>

let keys = split('qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM`~!@#$%^&*()-=_+[]{}\;<>?/', '.\zs')

for k in keys

	exec 'map ' . k . ' <nop>'
	exec 'map <m-' . k . '> <nop>'
	exec 'map <c-' . k . '> <nop>'
	exec 'imap <m-' . k . '> <nop>'
	exec 'imap <c-' . k . '> <nop>'

endfor

for i in range(1, 9)

	exec 'map <c-' . i . '> <nop>'
	exec 'map <f' . i . '> <nop>'

endfor

" global
noremap : :
noremap . .
nnoremap r :!
noremap <silent> <esc> <esc>:noh<cr>
inoremap <silent> <esc> <esc>:noh<cr>
tnoremap <esc> <c-\><c-n>

" movement
noremap k k
noremap j j
noremap h h
noremap l l
noremap <m-h> ^
noremap <m-l> $
noremap <m-left> b
noremap <m-right> e
inoremap <m-h> <left>
inoremap <m-l> <right>
inoremap <m-j> <down>
inoremap <m-k> <up>
inoremap <m-left> <esc>ba
inoremap <m-right> <esc>ea

" buffers
noremap ` <c-^>
noremap <silent> - :bp<cr>
noremap <silent> = :bn<cr>

" edit
nnoremap > A
nnoremap < I
vnoremap > <esc>`>a
vnoremap < <esc>`<i
nnoremap <return> a
noremap <m-return> A<return>yo<bs><bs><esc>
vnoremap <return> s
inoremap <m-bs> <c-w>
inoremap <tab> <tab>
inoremap <return> <return>yo<bs><bs>

" undo & redo
noremap <silent> u u
noremap <silent> o <c-r>

" cut & copy & paste
noremap <silent> p "*p
nnoremap <silent> y "*yy
vnoremap <silent> y "*y`>
nnoremap <silent> x "*dd
vnoremap <silent> x "*d
noremap <silent> d "_dd<esc>
inoremap <silent> <m-p> <esc>"*pa

" search
nnoremap ? /
noremap <silent> <m-;> N
noremap <silent> <m-'> n

" selection
noremap v v
noremap <m-v> <c-v>
nnoremap <space> viw
vnoremap <space> <esc>
noremap <m-a> ggVG

" indent
vnoremap <tab> >gv
vnoremap <m-tab> <gv

" tabs
nnoremap <silent> <m-q> :tabp<cr>
nnoremap <silent> <m-e> :tabn<cr>
nnoremap <silent> <m-n> :tabe<cr>:Projekt<cr>
inoremap <silent> <m-q> <esc>:tabp<cr>
inoremap <silent> <m-e> <esc>:tabn<cr>
inoremap <silent> <m-n> <esc>:tabe<cr>:Projekt<cr>
tnoremap <silent> <m-q> <c-\><c-n>:tabp<cr>
tnoremap <silent> <m-e> <c-\><c-n>:tabn<cr>
tnoremap <silent> <m-n> <c-\><c-n>:tabe<cr>:Projekt<cr>

if has("gui_vimr")
	for i in range(1, 9)
		exec 'noremap <d-' . i . '> :tabn ' . i . '<cr>'
	endfor
endif

" yo
for i in range(1, 9)
	exec 'noremap <f' . i . '> :echo "y' . repeat('o', i) . '"<cr>'
endfor

" vimfiler
func! s:vimfiler_remap()

	map <silent> <buffer> <return> <Plug>(vimfiler_cd_or_edit)
	map <silent> <buffer> <space> <Plug>(vimfiler_expand_tree)
	map <silent> <buffer> <tab> <Plug>(vimfiler_close)
	map <silent> <buffer> <bs> <Plug>(vimfiler_switch_to_parent_directory)
	map <silent> <buffer> 0 <Plug>(vimfiler_switch_to_project_directory)
	map <silent> <buffer> j <Plug>(vimfiler_loop_cursor_down)
	map <silent> <buffer> k <Plug>(vimfiler_loop_cursor_up)
	map <silent> <buffer> r <Plug>(vimfiler_close):FilerProject<cr>

endfunc

augroup vimfilerremap

	autocmd!
	autocmd FileType vimfiler :call s:vimfiler_remap()

augroup END

" plugins
call pair#bind()
call search#bind()
noremap <silent> <m-k> :Scroll -12<cr>
noremap <silent> <m-j> :Scroll 12<cr>
nnoremap <silent> <tab> :Filer<cr>
noremap <silent> <m-f> :CtrlP<cr>
noremap <silent> <m-t> :CtrlPTag<cr>
noremap <silent> <m-b> :CtrlPBuffer<cr>
noremap <silent> <m--> :OpenTerm<cr>
noremap <silent> <m-=> :OpenFinder<cr>
noremap <silent> / :Comment<cr>
nnoremap <silent> <m-w> :Close<cr>
nnoremap <silent> <m-[> :PrevFunc<cr>
nnoremap <silent> <m-]> :NextFunc<cr>
noremap b :Make<space>
noremap z :Projekt<space>

