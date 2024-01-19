
--	########################################################\
--- #				  Settings & initialize					# O>
--	########################################################/

local function map(mode, lhs, rhs, opts)
  local options = { silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Set leader to back slash.
vim.g.mapleader = '\\'

-- FZF size
vim.g.fzf_layout = {window = {width = 0.9, height = 0.8}}

--	######################################################\
--- #					Neovim Shortcuts				  # O>
--	######################################################/

-- Prevent :Q
map('n', ';', ':')

-- Escape key mapping :)
map('i', 'kj', '<ESC>')
map('i', '<C-c>', '<ESC>')

-- Window Shift
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Git
map('n', '<Leader>gg', ':Git')

-- FZF
map('n', '<Leader>ff', ':Files ~/<CR>')
map('n', '<Leader>fi', ':Files ../<CR>')

-- Explore
map('n', '<Leader>tb', ':Tagbar<CR>')
map('n', '<Leader>nt', ':NERDTree<CR>')

-- say-Compile setting
map('n', '<Leader>mm', ':call CompileRun')

-- force arrow keys (LOL)
map('n', '<Up>', '<NOP>')
map('i', '<Up>', '<NOP>')
map('v', '<Up>', '<NOP>')
map('n', '<Down>', '<NOP>')
map('i', '<Down>', '<NOP>')
map('v', '<Down>', '<NOP>')
map('n', '<Left>', '<NOP>')
map('i', '<Left>', '<NOP>')
map('v', '<Left>', '<NOP>')
map('n', '<Right>', '<NOP>')
map('i', '<Right>', '<NOP>')
map('v', '<Right>', '<NOP>')
