" TODO: Find a good plugin for managing daily logs and todo lists using Vim
" TODO: Plug and configure ultisnips
" TODO: Load plugins on demand https://github.com/junegunn/vim-plug#on-demand-loading-of-plugins
" TODO: Optimize ALE linting https://github.com/w0rp/ale#5xiv-will-this-plugin-eat-all-of-my-laptop-battery-power
" TODO: Plug and configure some sort of autocompletion
" TODO: Get vim-test to work
" TODO: Look at sensible.vim and see what plugins are in there
" TODO: Add and configure surround.vim plugin
" TODO: Configure helpful variables for VRC

set nocompatible
set tabstop=2 shiftwidth=2 expandtab
set rnu
set nohlsearch

" netrw settings
let g:netrw_list_hide= '.*\.swp$,.*\.pyc'

" MAPPINGS

noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>

" PLUGINS

call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'digitaltoad/vim-pug'
Plug 'jiangmiao/auto-pairs'
Plug 'kchmck/vim-coffee-script'
Plug 'mxw/vim-jsx'
Plug 'othree/yajs.vim'
Plug 'w0rp/ale'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
" Plug 'janko/vim-test'
Plug 'tpope/vim-obsession'
Plug 'diepm/vim-rest-console'
call plug#end()

""" mileszs/ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

""" ctrlpvim/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = 'node_modules\|git\|yarn-offline-mirror\|*.pyc'
let g:ctrlp_user_command=['.git/','git --git-dir=%s/.git ls-files -oc --exclude-standard']


""" w0rp/ale
let g:ale_linters = {}
let g:ale_linters['javascript'] = ['eslint']
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\}
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma --prose-wrap=always'
let g:ale_fix_on_save = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

" Do not lint or fix minified files.
let g:ale_pattern_options = {
\ '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
\ '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
\ 'dist-server\/*': {'ale_linters': [], 'ale_fixers': []},
\}
" If you configure g:ale_pattern_options outside of vimrc, you need this.
let g:ale_pattern_options_enabled = 1
