require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "rust_analyzer", "pyright", "clangd" },
  automatic_installation = true,
})

