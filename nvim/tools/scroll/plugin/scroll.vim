" wengwengweng

let g:scroll_duration = get(g:, 'scroll_duration', 8)

command! -nargs=0 -range ScrollUp
			\ call scroll#up()

command! -nargs=0 -range ScrollDown
			\ call scroll#down()

