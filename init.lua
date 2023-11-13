
-- Set Nvim options
vim.o.number = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.autochdir = true
vim.o.autoindent = true
vim.o.shiftwidth = 4
vim.o.pumheight = 7
vim.o.syntax = 1
-- vim.o.ttimeoutlen = 0

-- Load settings
require('install-packer')
require('packer-package')
require('lsp-config')
require('cmp-config')
require('key-mappings')
require('underline-view')
