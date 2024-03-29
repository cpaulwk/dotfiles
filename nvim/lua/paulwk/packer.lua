-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  use({
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    requires = { { "nvim-lua/plenary.nvim" } },
  })

  -- Theme customization
  use("navarasu/onedark.nvim")
  use("vim-airline/vim-airline")
  use("vim-airline/vim-airline-themes")
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

  -- Superpowers
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use("tpope/vim-surround")
  use("tpope/vim-commentary")
  use("tpope/vim-repeat")
  use({ "neoclide/coc.nvim", branch = "release" })
  use("APZelos/blamer.nvim")
  use("windwp/nvim-ts-autotag")

  use({
    "VonHeikemen/lsp-zero.nvim",
    requires = {
      -- LSP Support
      { "neovim/nvim-lspconfig" },
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },

      -- Autocompletion
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "saadparwaiz1/cmp_luasnip" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },

      -- Snippets
      { "L3MON4D3/LuaSnip" },
      { "rafamadriz/friendly-snippets" },
    },
  })
  use("wakatime/vim-wakatime")

  -- Linters & formatters
  use("jose-elias-alvarez/null-ls.nvim")

  -- Folds
  -- use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }

  -- AI Codeium
  use("Exafunction/codeium.vim")
end)
