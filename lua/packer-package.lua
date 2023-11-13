
local use = require('packer').use

-- Packer.nivm initiallizing & load setting
require('packer').startup(function()

        use { -- LSP package
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            'neovim/nvim-lspconfig',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'hrsh7th/nvim-cmp',
			'L3MON4D3/LuaSnip',
			'folke/lsp-colors.nvim',
        }

        use { -- Download package
            'wbthomason/packer.nvim',
            'preservim/tagbar',
            'preservim/nerdtree',
            'tpope/vim-fugitive',
            'tpope/vim-surround',
            'tpope/vim-commentary',
            'bling/vim-bufferline',
            'jiangmiao/auto-pairs',
            { 'junegunn/fzf', run = function() vim.fn['fzf#install']() end },
            'junegunn/fzf.vim',
        }

        use { -- My package
            'sayTae/say-Tree',
            'sayTae/say-Compile',
        }
end)
