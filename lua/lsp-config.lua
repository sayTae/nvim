
local servers = { 'jdtls', 'clangd', 'pyright' }

-- Mason settings
require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = servers
}

-- LSP server settings
local capabilities = require('cmp_nvim_lsp').default_capabilities()

for _, lsp in ipairs(servers) do
    require('lspconfig')[lsp].setup {
        capabilities = capabilities
    }
end
