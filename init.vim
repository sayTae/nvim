
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set autochdir

call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'jiangmiao/auto-pairs' " auto pair <like ()>

set encoding=UTF-8

call plug#end()

" Map QE to save changes and exit
nnoremap <silent> QE :wq<CR>

" Map QQ to exit without saving changes
nnoremap <silent> QQ :q!<CR>

" map jk to ESC 
imap jk <Esc>

" map Tab auto-complite
inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<Tab>"

nnoremap <C-t> :NERDTree<CR>
map <F8> :TagbarToggle<CR>

" :set completeopt-=preview

" colorscheme setting
:colorscheme jellybeans

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let @f='for (int i=0; i<N; i++) {}'

map <F12> :call CompileRun()<CR>

func! CompileRun()
	exec "w"


" CompileRun Func

if (&filetype == 'java')
		exec "!javac -d ./bin %"
		exec "!java %:t:r"

	elseif &filetype == 'python'
		exec "!python3 %"

	endif

endfunc

