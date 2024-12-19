function! MyTablineFormatter()
	let s = ''
	let t = tabpagenr('$')
	echo 'tab:'.t
	let w = &columns / t
	for i in range(1, t + 1)
		let s.= '%'. w. 'T'. i. 'T'
	endfor
	return s
endfunction

nnoremap <F10> :call MyTablineFormatter()<CR>

" let g:airline#extensions#tabline#formatter = 'MyTablineFormatter'
