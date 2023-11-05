
-- Packer.nvim을 설치할 디렉토리 지정
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

-- Packer.nvim이 설치되어 있지 않으면 Packer를 설치
 if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.api.nvim_command('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end

-- Packer.nvim 초기화 및 설정 로딩
require('packer').startup(function()
    -- 플러그인 목록과 설정을 이곳에 추가
	use 'wbthomason/packer.nvim'
    use 'preservim/tagbar'
    use 'preservim/nerdtree'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'
    use 'bling/vim-bufferline'
	use 'neovim/nvim-lspconfig'
    use 'jiangmiao/auto-pairs'
    use { 'junegunn/fzf', run = function() vim.fn['fzf#install']() end }
    use 'junegunn/fzf.vim'
    use 'sayTae/say-Tree'
    use 'sayTae/say-Compile'
end)

-- 이후에 나머지 설정과 키 매핑 등을 추가하세요
require'lspconfig'.pyright.setup{}

-- Set options
vim.o.number = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.autochdir = true
vim.o.autoindent = true
vim.o.shiftwidth = 4
vim.cmd('syntax on')

-- Statusline configuration
vim.cmd[[
    autocmd VimEnter * highlight StatusLine ctermfg=35 ctermbg=0
    autocmd InsertEnter * highlight StatusLine ctermfg=33 ctermbg=0
    autocmd InsertLeave * highlight StatusLine ctermfg=35 ctermbg=0
]]

-- bufferline
vim.o.statusline = '%< %F %r %= %l:%c:%b %{&ff} %{&enc} [' .. vim.fn.line2byte(vim.fn.line('$')) .. ']'

-- Map <C-[> to ESC
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', { noremap = true })

-- Buffer navigation
vim.api.nvim_set_keymap('n', '<C-j>', ':bp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':bn<CR>', { noremap = true, silent = true })

-- Map Tab for autocompletion
vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "\\<C-y>" : "\\<Tab>"', { noremap = true, expr = true })

-- FZF settings
vim.g.fzf_layout = { window = { width = 0.8, height = 0.9 } }
vim.api.nvim_set_keymap('n', 'FI', ':Files ~/<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'FD', ':Files ../<CR>', { noremap = true, silent = true })

-- say-Compile setting
vim.api.nvim_set_keymap('n', 'mm', ':call CompileRun()<CR>', { noremap = true, silent = true })
