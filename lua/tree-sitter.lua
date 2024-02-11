
-- treesitter.lua

local M = {}

M.setup = function()
    require'nvim-treesitter.configs'.setup {
        ensure_installed = { "c", "cpp", "nasm", "rust", "c_sharp", "java", "python", "lua", "vim", "vimdoc" },
        highlight = {
            enable = true,
        },
    }
end

return M
