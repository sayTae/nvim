
local servers = { 'jdtls', 'clangd', 'pyright' }

-- Mason 설정
require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = servers
}

-- LSP 설정
local capabilities = require('cmp_nvim_lsp').default_capabilities()

for _, lsp in ipairs(servers) do
    require('lspconfig')[lsp].setup {
        capabilities = capabilities
    }
end
