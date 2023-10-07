
set number
set ts=4
set sts=4
set autochdir
set autoindent
set shiftwidth=4
set ttimeoutlen=0
syntax on

call plug#begin('~/.config/nvim/plugged')
" github settings
Plug 'preservim/tagbar' " func tagbar
Plug 'preservim/nerdtree' " NerdTree
Plug 'tpope/vim-fugitive' " Git command on vim (:G)
Plug 'tpope/vim-surround' " Bracket control (ys, cs, ds)
Plug 'tpope/vim-commentary' " For Commenting (gcc & gc)
Plug 'bling/vim-bufferline' " Bufferline
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' " finder (file & git)
" custom settings
Plug 'sayTae/say-Tree' " File tree-view
Plug 'sayTae/say-Compile' " Compile custom setting
call plug#end()

" statusLine configuraton
set statusline=%<\ %F\ %r\ %=%l:%c:%b\ %{&ff}\ %{&enc}\ [%{line2byte(line('$'))}]\
autocmd VimEnter * highlight StatusLine ctermfg=35 ctermbg=0
autocmd InsertEnter * highlight StatusLine ctermfg=33 ctermbg=0
autocmd InsertLeave * highlight StatusLine ctermfg=35 ctermbg=0

" map <C-[> to ESC 
inoremap <C-[> <ESC>
vnoremap <C-[> <ESC>

" buffer shift
nnoremap <silent> <C-j> :bp<CR>
nnoremap <silent> <C-k> :bn<CR>

" map Tab auto-complite
" inoremap <silent><expr> <TAB> pumvisible() ? "\<C-y>" : "\<TAB>"
" inoremap <silent> <Tab> <C-n>

" fzf settings
let g:fzf_layout = {'window': {'width': 0.8, 'height': 0.9}}
nnoremap FI :Files ~/<CR> 
nnoremap FD :Files ../<CR> 

" say-Compile setting
nnoremap mm :call CompileRun()<CR>
