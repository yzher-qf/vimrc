set nocompatible

call plug#begin()

Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'Chiel92/vim-autoformat'
call plug#end()

set tabstop=4
set laststatus=2 
let g:onedark_termcolors=16
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:airline_theme='onedark'

map <C-n> :NERDTreeToggle<CR>

au Filetype FILETYPE let b:AutoPairs = {"(": ")"}
au FileType php      let b:AutoPairs = AutoPairsDefine({'<?' : '?>', '<?php': '?>'})

syntax on
colorscheme onedark
set number 
hi Normal ctermfg=252 ctermbg=none

nnoremap <F5>   <Esc>:w<CR>:!g++ -std=c++11 % -o /tmp/a.out && /tmp/a.out<CR>
noremap <F3> :Autoformat<CR>

let g:autoformat_verbosemode=1 "开启详细模式便于查错
autocmd BufWrite *.cpp,*.sql,*.c,*.py,*.java,*.js :Autoformat "设置发生保存事件时执行格式化

"let g:autoformat_autoindent = 0
"let g:autoformat_retab = 0
"let g:autoformat_remove_trailing_spaces = 0
"autocmd FileType vim,tex let b:autoformat_autoindent=0
"gg=G :retab :RemoveTrailingSpaces

