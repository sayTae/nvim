
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set autochdir

call plug#begin()

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
Plug 'https://github.com/glepnir/dashboard-nvim' " dash board-nvim

set encoding=UTF-8

call plug#end()

nnoremap <C-t> :NERDTree<CR>

map <F8> :TagbarToggle<CR>

map <F10> oimport java.io.*;<CR>import java.util.*;<CR><CR>public class Main {<CR><CR>public static void main(String[] args) throws IOException {<CR>BufferedReader br = new BufferedReader(new InputStreamReader(System.in));<CR>StringBuilder sb = new StringBuilder(); StringTokenizer st;<CR><CR>int N = Integer.parseInt(br.readLine());<CR><CR>}<CR>}<CR><ESC>kkko


" :set completeopt-=preview

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

	" if (&filetype == 'java' && expand('%:t:r') == 'Main')
		" exec !javac -classpath \".:bin\" -d ./bin %"
		" exec !java -classpath \".:bin\" %:t:r"
		" exec !java -cp %:p:h %:t:r"

	" elseif (&filetype == 'java' && expand('%:t:r') != 'Main')
		" exec !javac -classpath \".:bin\" -d ./bin %"
	
	if (&filetype == 'java')
		exec "!javac -classpath \".:bin\" -d ./bin %"

	elseif &filetype == 'python'
		exec "!python3 %"

	endif

endfunc

