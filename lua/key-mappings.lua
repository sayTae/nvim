
--	########################################################\
--- #				  Settings & initialize					# O>
--	########################################################/

local function map(mode, lhs, rhs, opts)
  local options = { silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

-- Lua-Snip
local ls = require("luasnip")

-- Set leader to space
vim.g.mapleader = ' '

-- FZF size
vim.g.fzf_layout = {window = {width = 0.9, height = 0.8}}
vim.g.float_preview_docked = 1

--	######################################################\
--- #					Neovim Shortcuts				  # O>
--	######################################################/

-- Prevent :Q
map('n', ';', ':')

-- Change Mode
map('i', 'kj', '<ESC>')
map('i', 'ｋｊ', '<ESC>')

-- Window Shift
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- NERDTree & Tagbar
map('n', '<C-2>', ':NERDTreeToggle<CR>')
map('n', '<C-3>', ':Tagbar<CR>')
map('n', '<C-4>', ':bd<CR>')

-- Buffer navigation
map('n', '<C-j>', ':bp<CR>')
map('n', '<C-k>', ':bn<CR>')

-- Substitute
map('n', '%s', ':%s\'\'g<Left><Left>')

-- FZF
map('n', '<Leader>fi', ':Files ~/<CR>')
map('n', '<Leader>ff', ':Files ../<CR>')

-- Snippet
map({'i'}, '<C-k>', function() ls.expand() end)
map({'i', 's'}, '<C-l>', function() ls.jump(1) end)
map({'i', 's'}, '<C-j>', function() ls.jump(-1) end)

-- Git
map('n', '<Leader>gg', ':Git<CR>')
map('n', '<Leader>gw', ':Gwrite<CR>')
map('n', '<Leader>gr', ':Git reset %<CR>')
map('n', '<Leader>gc', ':Git commit -m \'\'<Left>')
map('n', '<Leader>ga', ':Git commit --amend -m \'\'<Left>')
map('n', '<Leader>gd', ':Gvdiffsplit<CR>')

