local success, packer = pcall(require, "packer")

if not success then
  return
end

local use = packer.use

packer.startup(
  function()
    use {
      "wbthomason/packer.nvim",
      {
        "neovim/nvim-lspconfig",
        config = function()
          require "plugins.lspconfig"
        end
      },
      {
        "akinsho/flutter-tools.nvim",
        config = function()
          require "flutter-tools".setup {}
        end,
        requires = "nvim-lua/plenary.nvim"
      },
      {
        "nvim-lualine/lualine.nvim",
        requires = {"kyazdani42/nvim-web-devicons", opt = true}
      },
      {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = function()
          require "treesitter-config"
        end
      },
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/nvim-cmp",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
      "folke/tokyonight.nvim"
    }
  end
)
