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
set completeopt-=preview
set nowrap

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'leafgarland/typescript-vim'
Plug 'posva/vim-vue'
Plug 'preservim/nerdtree'
Plug 'yuttie/comfortable-motion.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'bfrg/vim-cpp-modern'
Plug 'valloric/youcompleteme'
Plug 'sheerun/vim-polyglot'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

" unmap these for use with ultisnips
" unmap <C>s
" unmap <C>u
" unmap <C>i

let g:go_null_module_warning = 0
let g:go_version_warning = 0
let g:comfortable_motion_friction = 1000.0
let g:comfortable_motion_air_drag = 0.0
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
let g:ycm_enable_diagnostic_signs = 0
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let NERDTreeShowHidden=1

" ultisnips mapping
let g:UltiSnipsEdit="<c-s>"
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsListSnippets="<c-l>"
" ultisnips mapping

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
map gl :GoLint<cr>

map mq :q<cr>
map s :wall<cr>
map mm :NERDTree<cr>
map ,v :vs<cr>
map ,s :sp<cr>
map gl :GoLint<cr>
