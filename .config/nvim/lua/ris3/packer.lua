-- Plugin manager
return require('packer').startup(function(use)
  -- Packer può aggiornarsi da solo
  use 'wbthomason/packer.nvim'

  -- LSP Config
  use 'neovim/nvim-lspconfig'

  -- Completion plugin
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp

  -- Snippets (opzionale)
  use 'L3MON4D3/LuaSnip'

  -- Optional: Mason per installare rust-analyzer facilmente
  use {
    "williamboman/mason.nvim",
    run = ":MasonUpdate" -- opzionale
  }
  use "williamboman/mason-lspconfig.nvim"
end)

