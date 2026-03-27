
-- LSP Setup using mason.nvim and lspconfig
local servers = {'clangd', 'jdtls', 'pyright', 'lua_ls', 'rust_analyzer', 'gopls'}

-- Mason Setup
require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = servers
}

-- LSP Setup (NEW API)
local capabilities = require('cmp_nvim_lsp').default_capabilities()

for _, lsp in ipairs(servers) do
    vim.lsp.config(lsp, {
        capabilities = capabilities,
    })

    vim.lsp.enable(lsp)
end

-- LSP Setup (OLD API)
-- for _, lsp in ipairs(servers) do
--     require('lspconfig')[lsp].setup {
--         capabilities = capabilities
--     }
-- end

-- Setup nvim-cmp for autocompletion

local cmp = require('cmp')
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)  -- Use LuaSnip to expand snippets
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_next_item(),
    ['<C-n>'] = cmp.mapping.select_prev_item(),
	['<C-e>'] = cmp.mapping.close(),
    ['<Tab>'] = cmp.mapping.confirm({ select = true }),
    -- ['<CR>'] = cmp.mapping.confirm({ select = true }),
},
  sources = {
    { name = 'nvim_lsp' },     -- LSP completion source
    { name = 'buffer' },       -- Buffer completion source
    { name = 'path' },         -- Path completion source
    { name = 'cmdline' },      -- Command line completion source
  },
  formatting = {
    format = function(entry, vim_item)
      vim_item.abbr = string.sub(vim_item.abbr, 1, 20)
      return vim_item
    end
  },
})
