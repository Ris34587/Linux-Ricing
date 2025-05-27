-- LSP setup
local lspconfig = require('lspconfig')
lspconfig.rust_analyzer.setup{}

-- Completamento
local cmp = require'cmp'
cmp.setup({
  sources = {
    { name = 'nvim_lsp' }
  },
  mapping = cmp.mapping.preset.insert({
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
})

