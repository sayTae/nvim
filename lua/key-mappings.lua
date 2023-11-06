
-- Map <C-[> to ESC
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', { noremap = true })

-- Buffer navigation
vim.api.nvim_set_keymap('n', '<C-j>', ':bp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':bn<CR>', { noremap = true, silent = true })

-- Map Tab for autocompletion
-- vim.api.nvim_set_keymap('i', '<Tab>', 'vim.fn.pumvisible() ? "<CR>" : "<Tab>"', { noremap = true, expr = true })
-- vim.api.nvim_set_keymap('i', '<Tab>', '<C-n>', { noremap = true, expr = true })

-- FZF settings
vim.g.fzf_layout = { window = { width = 0.8, height = 0.9 } }
vim.api.nvim_set_keymap('n', 'FI', ':Files ~/<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'FD', ':Files ../<CR>', { noremap = true, silent = true })

-- say-Compile setting
vim.api.nvim_set_keymap('n', 'mm', ':call CompileRun()<CR>', { noremap = true, silent = true })
