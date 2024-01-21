
--  ###############################\
--- #		Set Nvim options 	   # O>
--  ###############################/

vim.o.number = true
vim.o.relativenumber = false
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

require('install-packer')
require('packer-package')
require('key-mappings')
require('underline-view')
require("hardtime").setup()
