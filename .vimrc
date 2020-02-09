syntax on
set bg=dark
set modifiable

inoremap jk <Esc>
inoremap kj <Esc>
cnoremap jk <Esc>
cnoremap kj <Esc>
vnoremap jk <Esc>
vnoremap kj <Esc>
nnoremap <silent> <C-j> :call comfortable_motion#flick(100)<CR>
nnoremap <silent> <C-k> :call comfortable_motion#flick(-100)<CR>

set number
set noswapfile

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'leafgarland/typescript-vim'
Plug 'posva/vim-vue'
Plug 'preservim/nerdtree'
Plug 'yuttie/comfortable-motion.vim'
call plug#end()

let g:go_version_warning = 0
let g:comfortable_motion_friction = 1000.0
let g:comfortable_motion_air_drag = 0.0
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

colorscheme gruvbox

map <Leader>v :execute("vsplit")<CR>
map <Leader>s :execute("vsplit")<CR>
map <Leader>u :execute("vsplit")<CR>
map <Leader>c :execute("vsplit")<CR>

map <Leader>j :execute("vsplit")<CR>
map <Leader>c :execute("vsplit")<CR>
map <Leader>c :execute("vsplit")<CR>
map <Leader>c :execute("vsplit")<CR>

map mq :q<cr>
map s :wall<cr>
map mm :NERDTree<cr>
map ,v :vs<cr>
map ,s :sp<cr>

