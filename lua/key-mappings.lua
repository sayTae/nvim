
--	########################################################\
--- #				  Settings & initialize					# O>
--	########################################################/

local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Set leader to back-slash.
vim.g.mapleader = '\\'

-- FZF size
vim.g.fzf_layout = {window = {width = 0.9, height = 0.8}}

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
map('n', '<Leader>gr', ':Git restore --staged %<CR>')
map('n', '<Leader>gc', ':Git commit -m \'\'<Left>')
map('n', '<Leader>ga', ':Git commit --amend -m \'\'<Left>')
map('n', '<Leader>gd', ':Gvdiffsplit<CR>')

-- Substitute
map('n', '<Leader>ss', ':%s\'\'g<Left><Left>')
map('n', '<Leader>sc', ':%s\'\'g><Left><Left><Left>')

-- FZF
map('n', '<Leader>ff', ':Files ~/<CR>')
map('n', '<Leader>fi', ':Files ../<CR>')
map('n', '<Leader>gf', ':GitFiles<CR>')

-- snippet
map('i', '(', '()<Esc>i')
map('i', '{', '{}<Esc>i')
map('i', '[', '[]<Esc>i')
map('i', '<', '<><Esc>i')
map('i', '\'', '\'\'<Esc>i')
map('i', '\"', '\"\"<Esc>i')
map('i', ';;', '<Esc>A;')

-- :wq
map('n', '<Leader>w', ':w<CR>')
map('n', '<Leader>q', ':q<CR>')
map('n', '<Leader>x', ':wq<CR>')

-- say-Compile setting
map('n', '<Leader>mm', ':call CompileRun')
