
-- Packer.nvim directory
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

-- if not Packer.nvim then install
 if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.api.nvim_command('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end

-- Packer.nivm initiallizing & load setting
require('packer').startup(function()
	
	use {-- LSP package
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
		'williamboman/nvim-lsp-installer',
		'neovim/nvim-lspconfig',
	}

	use { -- download package 
		'wbthomason/packer.nvim'
		'preservim/tagbar'
		'preservim/nerdtree'
		'tpope/vim-fugitive'
		'tpope/vim-surround'
		'tpope/vim-commentary'
		'bling/vim-bufferline'
		'jiangmiao/auto-pairs'
		{ 'junegunn/fzf', run = function() vim.fn['fzf#install']() end },
		'junegunn/fzf.vim'
		-- use 'mfussenegger/nvim-jdtls'
	}
	}

	use { -- my package
		'sayTae/say-Tree',
		'sayTae/say-Compile',
	}

end)

-- LSP configuration
require("nvim-lsp-installer").setup({
    automatic_installation = true, -- automatically detect which servers to install
    ui = {
        icons = {

            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})

-- setup mason
require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "jdtls", "pyright", "clangd" },
}

-- setup language
require'lspconfig'.jdtls.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.pyright.setup{}


-- Set Nvim options
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
	}
    autocmd InsertEnter  * highlight StatusLine ctermfg=33 ctermbg=0
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
