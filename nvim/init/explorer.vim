" wengwengweng

func! s:explore()

	let l:name = expand('%:p')

	if isdirectory(l:name)

		exec 'lcd ' . l:name
		Browser

	elseif filereadable(l:name)

		exec 'lcd ' . expand('%:p:h')

	endif

endfunc

augroup Explore

	autocmd!

	autocmd BufEnter *
				\ call s:explore()

augroup END

