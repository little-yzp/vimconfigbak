inoremap jk <ESC> 
"<CR>代表回车键
nnoremap <c-s> :w<CR>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
"调整当前窗口的上下左右
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><
"大写P  
nnoremap P "*p 
let mapleader=" "
nnoremap <leader>q :q<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>s :wq<cr>
"buffer--与打开文件一一对应
nnoremap <leader>p :execute ':w' <CR>:execute ':bp'<CR>
nnoremap <leader>n :bnext<cr>
nnoremap <leader>d :bdelete<cr>
nnoremap <leader>sv :execute ':w' <CR>:execute ':source $MYVIMRC'<CR>

nnoremap <left> <Nop>
nnoremap <down> <Nop>
nnoremap <up> <Nop>
nnoremap <right> <Nop>

nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $

nnoremap <ESC> :wqall<CR>
nnoremap <F5> :call TestBuf()<CR>
map <F2> :e $MYVIMRC<CR>
function! TestBuf()
	let s:current_buf=bufnr('%')
	echo s:current_buf
	bufdo if bufnr('%')!=s:current_buf|bdelete|endif
endfunction

"切换菜单
nnoremap <F4> :if &guioptions=~#'mTr'<Bar>
        \set guioptions-=mTr<Bar>
        \else<Bar>
        \set guioptions+=mTr<Bar>
        \endif<CR>
