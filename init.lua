
-- Set Nvim options
vim.o.number = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.autochdir = true
vim.o.autoindent = true
vim.o.shiftwidth = 2
vim.o.pumheight = 7
vim.o.syntax = 'enable'
-- vim.o.ttimeoutlen = 0

-- Load settings
require('install-packer')
require('packer-package')
require('lsp-config')
require('cmp-config')
require('key-mappings')
require('underline-view')
