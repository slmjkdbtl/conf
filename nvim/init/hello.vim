" wengwengweng

func! s:hello()

	if has('gui_macvim')
		Profile macvim
	else
		Profile oceanic
	endif

	if !argc()
		Projekt
	end

endfunc

func! s:bye()

	echo 'bye~'

endfunc

augroup Hello

	autocmd!

	autocmd VimEnter *
				\ :call s:hello()

	autocmd VimLeave *
				\ :call s:bye()

augroup END
