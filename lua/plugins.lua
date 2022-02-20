local success, packer = pcall(require, "packer")

if not success then
  return
end

local use = packer.use

packer.startup(
  function()
    use {
      "wbthomason/packer.nvim",
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/nvim-cmp",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
      "folke/tokyonight.nvim",
      "mhartington/formatter.nvim",
      "windwp/nvim-ts-autotag",
      {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
      },
      {
        "nvim-lualine/lualine.nvim",
        requires = {"kyazdani42/nvim-web-devicons", opt = true}
      },
      {
        "nvim-telescope/telescope.nvim",
        requires = {{"nvim-lua/plenary.nvim"}}
      },
      {
        "kyazdani42/nvim-tree.lua",
        requires = {
          "kyazdani42/nvim-web-devicons"
        }
      },
      {
        "onsails/lspkind-nvim",
        requires = {"kyazdani42/nvim-web-devicons", opt = true}
      },
      {
        "akinsho/flutter-tools.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
          require "flutter-tools".setup()
        end
      },
      {"akinsho/bufferline.nvim", requires = "kyazdani42/nvim-web-devicons"},
      {
        "folke/which-key.nvim",
        config = function()
          require "which-key".setup()
        end
      },
      {
        "ray-x/lsp_signature.nvim",
        config = function()
          require "lsp_signature".setup()
        end
      },
      {
        "norcalli/nvim-colorizer.lua",
        config = function()
          require "colorizer".setup {
            "html",
            "javascript",
            "javascriptreact",
            "css",
            "json",
            "scss",
            "toml",
            "typescript",
            "typescriptreact",
            "vue",
            "yaml"
          }
        end
      },
      {
        "windwp/nvim-autopairs",
        config = function()
          require("nvim-autopairs").setup(
            {
              disable_filetype = {"TelescopePrompt", "vim"}
            }
          )
        end
      },
      {
        "akinsho/toggleterm.nvim",
        config = function()
          require("toggleterm").setup()
        end
      }
    }
  end
)
