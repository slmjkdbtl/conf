" wengwengweng

let s:path = fnamemodify($MYVIMRC, ':h')
let s:remote_dir = s:path . '/remote'
let s:custom_dir = s:path . '/local'
let s:plugins = {}

func! plug#dir(dir)
	let s:custom_dir = a:dir
endfunc

func! plug#load(name)

	if isdirectory(a:name)
		exec 'set runtimepath+=' . a:name
	else
		let oname = s:custom_dir . '/' . a:name
		if isdirectory(oname)
			exec 'set runtimepath+=' . oname
		endif
	endif

endfunc

func! plug#loadall(path)
	for f in glob(a:path . '/*', 0, 1)
		if isdirectory(f)
			call plug#load(f)
		endif
	endfor
endfunc

func! plug#remote(repo)

	let name = split(a:repo, '/')[1]
	let dir = s:remote_dir . '/' . name
	let s:plugins[name] = { 'url': 'https://github.com/' . a:repo . '.git' }

	call plug#load(dir)

endfunc

func! plug#install()

	for name in keys(s:plugins)

		let url = s:plugins[name].url
		let dir = s:remote_dir . '/' . name

		if !isdirectory(dir)

			echo 'installing ' . name
			call system('git clone ' . url . ' ' . dir)
			redraw

		endif

	endfor

	echo 'done'

endfunc

func! plug#clean()

	for name in glob(s:remote_dir . '/*', 0, 1)

		let p = fnamemodify(name, ':t')

		if !has_key(s:plugins, p)

			echo 'removing ' . p
			call system('rm -rf ' . name)
			redraw

		endif

	endfor

	echo 'done'

endfunc

func! plug#update()

	for path in glob(s:remote_dir . '/*', 0, 1)

		let name = fnamemodify(path, ':t')

		echo 'updating ' . name
		call system('cd ' . path . ' && git pull')
		redraw

	endfor

	echo 'done'

endfunc

