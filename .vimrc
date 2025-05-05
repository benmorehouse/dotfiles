" use this to fix tab and space problem
" :set et!
" :ret!

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
set fileformat=unix

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'leafgarland/typescript-vim'
Plug 'posva/vim-vue'
Plug 'preservim/nerdtree'
Plug 'yuttie/comfortable-motion.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'bfrg/vim-cpp-modern'
Plug 'sheerun/vim-polyglot'
Plug 'honza/vim-snippets' 
Plug 'w0rp/ale'
Plug 'valloric/youcompleteme' 
Plug 'dart-lang/dart-vim-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let g:ale_linters_explicit = 1
let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \ 'typescript': ['eslint'],
      \ 'typescript.tsx': ['eslint'],
      \ 'html': ['eslint'],
      \ 'json': ['eslint'],
      \ 'go': ['golangci-lint'],
      \ 'terraform': ['terraform-lsp'],
      \ }

" Hide the signs column when there are no linting errors or warnings
let g:ale_sign_column_always = 0

" Auto fix errors when you save and close the file
let g:ale_fix_on_save = 1

" ale lint settings for typescript
let g:ale_fixers = {
      \ 'javascript': ['eslint'],
      \ 'typescript': ['eslint'],
      \ 'typescript.tsx': ['eslint'],
      \ 'html': ['eslint'],
      \ 'json': ['eslint'],
      \ }

let g:ale_fix_on_save = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '▲'
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 1

" ale lint settings for go
let g:ale_go_golangci_lint_options = '-c /Users/benmorehouse/.golangci-lint.yml'
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

filetype plugin on
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

" set this for tabs to be correctly set in each file type
autocmd FileType go setlocal tabstop=4
autocmd FileType go setlocal shiftwidth=4
autocmd FileType go setlocal expandtab

autocmd FileType terraform setlocal tabstop=2
autocmd FileType terraform setlocal shiftwidth=2
autocmd FileType terraform setlocal expandtab

autocmd FileType yaml setlocal tabstop=2
autocmd FileType yaml setlocal shiftwidth=2
autocmd FileType yaml setlocal expandtab

map mq :q<cr>
map s :wall<cr>
map mm :NERDTree<cr>
map ,v :vs<cr>
map ,s :sp<cr>
map gl :GoLint<cr>#


" Use [g and ]g to jump to errors
nmap [g <Plug>(coc-diagnostic-prev)
nmap ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap gd <Plug>(coc-definition)
nmap gy <Plug>(coc-type-definition)
nmap gi <Plug>(coc-implementation)
nmap gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call CocActionAsync('doHover')<CR>

" COC: Use Tab to trigger completion and navigate
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ CheckBackspace() ? "\<TAB>" :
  \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
