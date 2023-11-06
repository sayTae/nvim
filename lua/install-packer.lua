
-- Packer.nvim directory
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

-- if not Packer.nvim then install
 if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.api.nvim_command('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end
