local fn = vim.fn
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
vim.o.runtimepath = vim.fn.stdpath 'data' .. '/site/pack/*/start/*,' .. vim.o.runtimepath

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system {
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  }
end

local packer = require 'packer'

packer.startup(function(use)
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
    'kosayoda/nvim-lightbulb',
    'j-hui/fidget.nvim',
    'tami5/lspsaga.nvim',
    'folke/which-key.nvim',
    'folke/trouble.nvim',
    'folke/lua-dev.nvim',
    'folke/todo-comments.nvim',
    'goolord/alpha-nvim',
    'folke/tokyonight.nvim',
    'maxmx03/solarized.nvim',
    'SmiteshP/nvim-gps',
    {
      'weilbith/nvim-code-action-menu',
      cmd = 'CodeActionMenu',
    },
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
      'nvim-neo-tree/neo-tree.nvim',
      branch = 'v2.x',
      requires = {
        'nvim-lua/plenary.nvim',
        'kyazdani42/nvim-web-devicons',
        'MunifTanjim/nui.nvim',
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

  if user.plugins then
    use(user.plugins)
  end

  if packer_bootstrap then
    require('packer').sync()
  end
end)

vim.cmd [[
    augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
  ]]
