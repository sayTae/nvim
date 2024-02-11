
--  ###############################\
--- #		Set Nvim options 	   # O>
--  ###############################/

vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.autochdir = true
vim.o.autoindent = true
vim.o.shiftwidth = 4
vim.o.pumheight = 7
vim.o.syntax = 'enable'

--  ###############################\
--- #		Load Nvim options 	   # O>
--  ###############################/

require('packer/install-packer')
require('packer/packer-packages')
require('LSP/lsp-config')
require('LSP/cmp-config')
require('snippets/snippets')
require('tree-sitter')
require('key-mappings')
require('underline-view')
require('vscode-colorscheme')
require("hardtime").setup()
