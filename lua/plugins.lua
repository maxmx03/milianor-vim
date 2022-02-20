local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system(
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  )
end

local success, packer = pcall(require, 'packer')

if not success then
  return
end

local use = packer.use

packer.startup(function()
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
    'alexaandru/nvim-lspupdate',
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
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    },
    {
      'nvim-telescope/telescope.nvim',
      requires = { { 'nvim-lua/plenary.nvim' } },
    },
    {
      'jose-elias-alvarez/null-ls.nvim',
      requires = { { 'nvim-lua/plenary.nvim' } },
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
    {
      'akinsho/flutter-tools.nvim',
      requires = 'nvim-lua/plenary.nvim',
    },
    { 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' },
    {
      'folke/which-key.nvim',
      config = function()
        local success1, wk = pcall(require, 'which-key')

        if success1 then
          wk.setup()
        end
      end,
    },
    {
      'ray-x/lsp_signature.nvim',
      config = function()
        local success2, lsp_signature = pcall(require, 'lsp_signature')

        if success2 then
          lsp_signature.setup()
        end
      end,
    },
    {
      'norcalli/nvim-colorizer.lua',
      config = function()
        local success3, colorizer = pcall(require, 'colorizer')

        if success3 then
          colorizer.setup({
            'html',
            'javascript',
            'javascriptreact',
            'css',
            'json',
            'scss',
            'toml',
            'typescript',
            'typescriptreact',
            'vue',
            'yaml',
            'vim',
          })
        end
      end,
    },
    {
      'windwp/nvim-autopairs',
      config = function()
        local success4, autopairs = pcall(require, 'nvim-autopairs')

        if success4 then
          autopairs.setup({
            disable_filetype = { 'TelescopePrompt', 'vim' },
          })
        end
      end,
    },
    {
      'akinsho/toggleterm.nvim',
      config = function()
        local success5, toggleterm = pcall(require, 'toggleterm')

        if success5 then
          toggleterm.setup()
        end
      end,
    },
  })

  if packer_bootstrap then
    require('packer').sync()
  end
end)
