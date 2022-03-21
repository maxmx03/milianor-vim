local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
vim.o.runtimepath = vim.fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  })
end

require('packer').startup(function(use)
  use({
    'wbthomason/packer.nvim',
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets',
    'folke/tokyonight.nvim',
    'windwp/nvim-ts-autotag',
    'glepnir/dashboard-nvim',
    'rcarriga/nvim-notify',
    'williamboman/nvim-lsp-installer',
    'Mofiqul/vscode.nvim',
    'navarasu/onedark.nvim',
    'terrortylor/nvim-comment',
    'folke/which-key.nvim',
    'ray-x/lsp_signature.nvim',
    'norcalli/nvim-colorizer.lua',
    'windwp/nvim-autopairs',
    'akinsho/toggleterm.nvim',
    'tami5/lspsaga.nvim',
    {
      'weilbith/nvim-code-action-menu',
      cmd = 'CodeActionMenu',
    },
    { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install' },
    {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
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
