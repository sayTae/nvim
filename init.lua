
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
vim.o.pumwidth = 10
vim.o.syntax = 'enable'
vim.opt.inccommand = "split"
vim.cmd('colorscheme evening')
-- vim.cmd('colorscheme github_dark')
-- vim.cmd('highlight Normal guibg=NONE')

--  ###############################\
--- #		Load Nvim options 	   # O>
--  ###############################/

require('packer/install-packer')
require('packer/packer-packages')
-- require("hardtime").setup()
require('snippets/init')
require('tree-sitter')
require('key-mappings')
require('underline-view')
require("LSP/settings")

--  ###############################\
--- #		Other Nvim options 	   # O>
--  ###############################/

vim.cmd([[
  au BufRead,BufNewFile *.memo set filetype=memo
]])

vim.api.nvim_create_autocmd("InsertEnter", {
  pattern = "*.memo",
  callback = function()
    os.execute("fcitx5-remote -o")
  end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*.memo",
  callback = function()
    os.execute("fcitx5-remote -c")
  end,
})
