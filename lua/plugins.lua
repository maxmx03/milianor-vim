require('bootstrap')
local packer = require('packer')

packer.startup(function(use)
  use({
    'wbthomason/packer.nvim',
    'neovim/nvim-lspconfig',
    'windwp/nvim-ts-autotag',
    'rcarriga/nvim-notify',
    'williamboman/nvim-lsp-installer',
    'numToStr/Comment.nvim',
    'ray-x/lsp_signature.nvim',
    'windwp/nvim-autopairs',
    'akinsho/toggleterm.nvim',
    'kosayoda/nvim-lightbulb',
    'j-hui/fidget.nvim',
    'tami5/lspsaga.nvim',
    'folke/which-key.nvim',
    'LunarVim/onedarker.nvim',
    'LunarVim/darkplus.nvim',
    'folke/tokyonight.nvim',
    'maxmx03/solarized.nvim',
    'rebelot/kanagawa.nvim',
    'ellisonleao/gruvbox.nvim',
    'olimorris/onedarkpro.nvim',
    'NTBBloodbath/doom-one.nvim',
    'Mofiqul/dracula.nvim',
    'goolord/alpha-nvim',
    {
      'weilbith/nvim-code-action-menu',
      cmd = 'CodeActionMenu',
    },
    {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
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
      'akinsho/flutter-tools.nvim',
      requires = { 'nvim-lua/plenary.nvim', 'thosakwe/vim-flutter' },
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
      requires = 'kyazdani42/nvim-web-devicons',
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
  })
  if packer_bootstrap then
    require('packer').sync()
  end
end)

vim.cmd([[
    augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
  ]])
