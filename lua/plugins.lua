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
          require "plugins_config.lspconfig"
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
          require "plugins_config.treesitter-config"
        end
      },
      {
        "nvim-telescope/telescope.nvim",
        requires = {{"nvim-lua/plenary.nvim"}},
        config = function()
          vim.cmd [[
			nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
			nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
			nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
			nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
		  ]]
        end
      },
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      {
        "hrsh7th/nvim-cmp",
        config = function()
          require "plugins_config.cmpconfig"
        end
      },
      {
        "kyazdani42/nvim-tree.lua",
        requires = {
          "kyazdani42/nvim-web-devicons" -- optional, for file icon
        },
        config = function()
          require "plugins_config.nvim-treeconfig"
          require "nvim-tree".setup {}
        end
      },
      {
        "onsails/lspkind-nvim",
        requires = {"kyazdani42/nvim-web-devicons", opt = true},
        config = function()
          require "plugins_config.lualine-config"
        end
      },
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
      "folke/tokyonight.nvim",
      {
        "mhartington/formatter.nvim",
        config = function()
          require "plugins_config.formatters"
        end
      }
    }
  end
)
