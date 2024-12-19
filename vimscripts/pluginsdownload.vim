call plug#begin('D:\VimPlugins')

" Post-update hook: run a shell command after installing or updating the plugin
Plug 'junegunn/fzf.vim' 
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
