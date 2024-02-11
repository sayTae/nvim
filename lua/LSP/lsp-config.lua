
--##########################################\
--#				Language servers			# O>
--##########################################/

local servers = { 'clangd', 'pyright' }

--##########################################\
--#				  Mason Setup				# O>
--##########################################/

require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = servers
}

--##########################################\
--#			   LSP Language Setup			# O>
--##########################################/

local capabilities = require('cmp_nvim_lsp').default_capabilities()

for _, lsp in ipairs(servers) do
    require('lspconfig')[lsp].setup {
        capabilities = capabilities,
    }
end

--##########################################\
--#				   Lua Setup				# O>
--##########################################/

require('lspconfig').lua_ls.setup {
    -- ... other configs
    settings = {
        Lua = {
            diagnostics = {
                globals = {'vim'}
            }
        }
    }
}

--##########################################\
--#				   Rust Setup				# O>
--##########################################/

local nvim_lsp = require('lspconfig')
local on_attach = function(client)
    require'completion'.on_attach(client)
end

nvim_lsp.rust_analyzer.setup({
    on_attach = on_attach,
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
        }
    }
})
