require 'bootstrap'

local success, packer = pcall(require, 'packer')

if not success then
  return
end

packer.startup {
  function(use)
    local core_plugins = {
      'wbthomason/packer.nvim',
      'neovim/nvim-lspconfig',
      'williamboman/nvim-lsp-installer',
      'windwp/nvim-ts-autotag',
      'windwp/nvim-autopairs',
      'rcarriga/nvim-notify',
      'numToStr/Comment.nvim',
      'ray-x/lsp_signature.nvim',
      'akinsho/toggleterm.nvim',
      'j-hui/fidget.nvim',
      'glepnir/lspsaga.nvim',
      'folke/which-key.nvim',
      'folke/trouble.nvim',
      'folke/lua-dev.nvim',
      'folke/todo-comments.nvim',
      'rebelot/kanagawa.nvim',
      'SmiteshP/nvim-gps',
      'lewis6991/impatient.nvim',
      'lukas-reineke/indent-blankline.nvim',
      'glepnir/dashboard-nvim',
      'phaazon/hop.nvim',
      {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
      },
      {
        'iamcco/markdown-preview.nvim',
        run = 'cd app && npm install',
        setup = function()
          vim.g.mkdp_filetypes = { 'markdown' }
        end,
        ft = { 'markdown' },
      },
      {
        'KabbAmine/vCoolor.vim',
        requires = 'norcalli/nvim-colorizer.lua',
      },
      {
        'hrsh7th/nvim-cmp',
        requires = {
          'hrsh7th/cmp-nvim-lsp',
          'hrsh7th/cmp-buffer',
          'hrsh7th/cmp-path',
          'hrsh7th/cmp-cmdline',
          'saadparwaiz1/cmp_luasnip',
          'L3MON4D3/LuaSnip',
          'rafamadriz/friendly-snippets',
        },
      },
      {
        'sindrets/diffview.nvim',
        requires = 'nvim-lua/plenary.nvim',
      },
      {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
      },
      {
        'nvim-telescope/telescope.nvim',
        requires = 'nvim-lua/plenary.nvim',
      },
      {
        'jose-elias-alvarez/null-ls.nvim',
        requires = 'nvim-lua/plenary.nvim',
      },
      {
        'kyazdani42/nvim-tree.lua',
        requires = {
          'kyazdani42/nvim-web-devicons',
        },
      },
      {
        'onsails/lspkind-nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
      },
      { 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' },
      {
        'lewis6991/gitsigns.nvim',
        requires = {
          'nvim-lua/plenary.nvim',
        },
      },
    }

    use(core_plugins)

    if user.plugins ~= nil then
      use(user.plugins)
    end

    if packer_bootstrap then
      packer.sync()
    end
  end,
  config = {
    display = {
      open_fn = function()
        return require('packer.util').float { border = 'single' }
      end,
    },
  },
}

vim.cmd [[
    augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
  ]]
