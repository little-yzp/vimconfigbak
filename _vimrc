"语法高亮
syntax on
filetype plugin on
"显示行号
set number
set cursorline
set noswapfile
"缩进
"set tabstop=4
"0: never
"1: only if there are at least two tab pages
"2: always
set showtabline=2
"set 前加冒号：与不加，一样 
"系统剪切板与vim无名寄存器相连
":set clipboard="0
"关闭报错音
set noeb
set belloff=all
"设置背景 参数为[dark][light]
set bg=dark
set ruler
set showmode
"高亮搜索
set hlsearch
set incsearch
"字体 字体:风格:大小
"set guifont=Consolas:h18:cANSI:qDRAFT
set encoding=utf-8
"set clipboard=unamed
set clipboard+=unnamed
"主题--下载onedark主题后将下载项目文件夹下的onedark.vim手动复制到gvim安装目录/colors文件夹下
colorscheme onedark
"解除vi的兼容性 compatible-兼容的
set nocompatible
"回车键有效
set backspace=indent,eol,start
""""""""""""Vim-plug插件管理器"""""
"在左下角显示normal模式按下的按键
set showcmd
set laststatus=2
"设置vim的GUI程序初始化屏幕最大
"simalt:simulate alt key press
au GUIEnter * simalt ~x
"去除菜单栏
set guioptions-=m
"去除右部scrollbar
set guioptions-=lr
set splitright
"去除工具栏
set guioptions-=T
set helplang=cn

""""""""""""插件配置"""""
let g:airline#extensions#tabline#enabled = 1
" truncate long branch names to a fixed length >
let g:airline#extensions#branch#displayed_head_limit = 13
" enable/disable displaying tab number in tabs mode. >
let g:airline#extensions#tabline#show_tab_nr = 0
" 显示 buffer 编号，方便切换
let g:airline#extensions#tabline#buffer_nr_show=1

"""""""""""load scripts""""""
source ./vimscripts/guifontsettings.vim
source ./vimscripts/keymappings.vim
source ./vimscripts/pluginsdownload.vim
source ./vimscripts/airlineconfig.vim
source ./vimscripts/terconfig.vim
source ./vimscripts/testdebug.vim
"在vim中输入路径时自动将反斜杠\换为正斜杠/
set shellslash

