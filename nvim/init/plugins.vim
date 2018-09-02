" wengwengweng

" signify
let g:signify_vcs_list = [ 'git' ]
let g:signify_sign_show_text = 1
let g:signify_sign_show_count = 0
let g:signify_sign_add = '+'
let g:signify_sign_delete = '-'
let g:signify_sign_delete_first_line = g:signify_sign_delete
let g:signify_sign_change = '~'
let g:signify_sign_changedelete = g:signify_sign_change

" ale
let g:ale_lint_on_text_changed = 'never'
let g:ale_sign_error = '>'
let g:ale_sign_warning = '*'
let g:ale_sign_info = '?'

" ctrlp
if executable('fd')
	let g:ctrlp_user_command = 'fd -H .'
endif

let g:ctrlp_reuse_window = 'browser'
let g:ctrlp_show_hidden = 1

let g:ctrlp_prompt_mappings = {
	\ 'PrtBS()':              ['<bs>'],
	\ 'PrtDelete()':          [],
	\ 'PrtDeleteWord()':      ['<m-bs>'],
	\ 'PrtClear()':           [],
	\ 'PrtSelectMove("j")':   ['<down>'],
	\ 'PrtSelectMove("k")':   ['<up>'],
	\ 'PrtSelectMove("t")':   [],
	\ 'PrtSelectMove("b")':   [],
	\ 'PrtSelectMove("u")':   [],
	\ 'PrtSelectMove("d")':   [],
	\ 'PrtHistory(-1)':       [],
	\ 'PrtHistory(1)':        [],
	\ 'AcceptSelection("e")': ['<cr>'],
	\ 'AcceptSelection("h")': [],
	\ 'AcceptSelection("t")': [],
	\ 'AcceptSelection("v")': [],
	\ 'ToggleFocus()':        [],
	\ 'ToggleRegex()':        [],
	\ 'ToggleByFname()':      [],
	\ 'ToggleType(1)':        [],
	\ 'ToggleType(-1)':       [],
	\ 'PrtExpandDir()':       [],
	\ 'PrtInsert("c")':       [],
	\ 'PrtInsert()':          [],
	\ 'PrtCurStart()':        [],
	\ 'PrtCurEnd()':          [],
	\ 'PrtCurLeft()':         [],
	\ 'PrtCurRight()':        [],
	\ 'PrtClearCache()':      [],
	\ 'PrtDeleteEnt()':       [],
	\ 'CreateNewFile()':      [],
	\ 'MarkToOpen()':         [],
	\ 'OpenMulti()':          [],
	\ 'PrtExit()':            ['<esc>'],
	\ }

" tommywiseau
let g:is_human_bean = 0

" unload default plugins
let g:loaded_netrwPlugin = 1
let g:loaded_getscriptPlugin = 1
let g:loaded_zipPlugin = 1
let g:loaded_tarPlugin = 1
let g:loaded_vimballPlugin = 1
let g:loaded_2html_plugin = 1
let g:loaded_spellfile_plugin = 1
let g:loaded_gzip = 1
let g:loaded_rrhelper = 1
let g:loaded_logiPat = 1

