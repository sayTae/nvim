
local use = require('packer').use

--  ########################################################\
--- #		 Packer.nivm initiallizing & load setting		# O>
--  ########################################################/

require('packer').startup(function()

        use { --Packer
		'wbthomason/packer.nvim'
		}

        use { -- Download package
			'preservim/nerdtree',
            'preservim/tagbar',
            'tpope/vim-fugitive',
            'tpope/vim-surround',
            'tpope/vim-commentary',
            'bling/vim-bufferline',
			'm4xshen/hardtime.nvim',
			'nvim-lua/plenary.nvim',
			'ryanoasis/vim-devicons',
			"L3MON4D3/LuaSnip",
		}

		use { -- tree-sitter
			'nvim-treesitter/nvim-treesitter',
			run = ':TSUpdate',
			config = function() require('tree-sitter').setup() end,
		}

		use { -- autopair
		  "windwp/nvim-autopairs",
		   config = function() require("nvim-autopairs").setup {} end
		}

		use { -- fzf
		{ 'junegunn/fzf', run = function() vim.fn['fzf#install']() end },
		  'junegunn/fzf.vim',
		}
end)
