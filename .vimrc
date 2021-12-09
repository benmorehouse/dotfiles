syntax on
set bg=dark
set modifiable
set t_Co=256

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
set clipboard=unnamed
set nowrap

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'leafgarland/typescript-vim'
Plug 'posva/vim-vue'
Plug 'preservim/nerdtree'
Plug 'yuttie/comfortable-motion.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'bfrg/vim-cpp-modern'
Plug 'sheerun/vim-polyglot'
Plug 'valloric/youcompleteme' 
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets' 
Plug 'w0rp/ale'

Plug 'dart-lang/dart-vim-plugin'
call plug#end()

let g:ale_linters_explicit = 1
let g:ale_linters = {'go': ['golangci-lint']}
let g:ale_go_golangci_lint_options = '--disable-all --enable deadcode,errcheck,gosimple,govet,ineffassign,staticcheck,structcheck,unused,varcheck,whitespace,unparam,unconvert,goconst,misspell,revives'
let g:ale_go_golangci_lint_package = 1

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

" terraform configurations
" let g:terraform_align=1
" let g:terraform_fold_sections=1
" let g:terraform_fmt_on_save=1
" let g:terraform_binary_path="/usr/local/Cellar/terraform/0.13.5/bin/terraform"

" make this terraform highlighting work for other hashicorp config language files
autocmd BufRead,BufNewFile *.hcl set filetype=terraform
" terraform configurations

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
