set guifont=JetBrains_Mono:b:h12:cANSI:qDRAFT
let s:font_size_num = 12
let s:MAX_FONT_SIZE=24
let s:MIN_FONT_SIZE=5
function! AdjustFontSize(size)
    " 使用局部变量的正确语法来引用和修改，避免潜在的作用域混淆问题
    let s:font_size_num = s:font_size_num + a:size
    echo s:font_size_num
    if s:font_size_num > s:MAX_FONT_SIZE 
	    let s:font_size_num=s:MAX_FONT_SIZE
    endif
    if s:font_size_num < s:MIN_FONT_SIZE
	    let s:font_size_num=s:MIN_FONT_SIZE
    endif

    let current_font = &guifont
    echo current_font
    " 这里split返回的列表应该使用正确的变量名来接收，之前写的s:gui_font_list少了个s:前缀，应该为s:gui_font_list
    let s:gui_font_list = split(current_font, ":")
    " 构建新的字体尺寸字符串，注意这里变量名要写完整的s:tmpStr
    let s:tmpStr = 'h'.s:font_size_num
    let s:gui_font_list[2] = s:tmpStr
    " 拼接新的字体设置字符串，同样要写完整的变量名s:gui_font_list
    let s:new_gui_font = join(s:gui_font_list, ":")
    echo s:new_gui_font
    " 最后设置新的字体，这里要写完整的变量名new_gui_font
    let cmd='set guifont='.s:new_gui_font
    execute cmd
endfunction

noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR><CR>
noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR><CR>
inoremap <C-ScrollWheelUp> <Esc>:call AdjustFontSize(1)<CR>a
inoremap <C-ScrollWheelDown> <Esc>:call AdjustFontSize(-1)<CR>a

