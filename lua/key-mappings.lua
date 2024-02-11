
--	########################################################\
--- #				  Settings & initialize					# O>
--	########################################################/

-- local function map(mode, lhs, rhs, opts)
--   local options = { noremap=true, silent=true }
--   if opts then
--     options = vim.tbl_extend('force', options, opts)
--   end
--   vim.api.nvim_set_keymap(mode, lhs, rhs, options)
-- end

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

-- Window Shift
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Git
map('n', '<Leader>gg', ':Git<CR>')
map('n', '<Leader>gw', ':Gwrite<CR>')
map('n', '<Leader>gr', ':Git reset %<CR>')
map('n', '<Leader>gc', ':Git commit -m \'\'<Left>')
map('n', '<Leader>ga', ':Git commit --amend -m \'\'<Left>')
map('n', '<Leader>gd', ':Gvdiffsplit<CR>')

-- Substitute
map('n', '<Leader>ss', ':%s\'\'g<Left><Left>')
map('n', '<Leader>sc', ':%s\'\'gc<Left><Left><Left>')

-- FZF
map('n', '<Leader>fi', ':Files ~/<CR>')
map('n', '<Leader>ff', ':Files ../<CR>')

map('i', ';;', '<Esc>A;')
map('i', ',,', '<Esc>la, ')

-- Buffer Shift
map('n', '<Leader>1', ':NERDTree<CR>')
map('n', '<Leader>2', ':bp<CR>')
map('n', '<Leader>3', ':bn<CR>')
map('n', '<Leader>4', ':bd<CR>')

-- :wq
map('n', '<Leader>w', ':w<CR>')
map('n', '<Leader>q', ':q<CR>')
map('n', '<Leader>x', ':wq<CR>')

-- Snippet
map({'i'}, '<C-k>', function() ls.expand() end)
map({'i', 's'}, '<C-l>', function() ls.jump(1) end)
map({'i', 's'}, '<C-j>', function() ls.jump(-1) end)
map({'i', 's'}, '<C-E>', function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end)

