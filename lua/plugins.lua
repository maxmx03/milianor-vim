local fn = vim.fn
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

local packer_bootstrap = nil

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap =
    fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
  vim.cmd [[packadd packer.nvim]]
end

local user = require 'user.config'

local success, packer = pcall(require, 'packer')

if not success then
  return
end

success = pcall(require, 'impatient')

if not success then
  vim.cmd 'colorscheme slate'
end

packer.startup {
  function(use)
    use 'wbthomason/packer.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'glepnir/lspsaga.nvim'
    use 'ray-x/lsp_signature.nvim'
    use { 'iamcco/markdown-preview.nvim', run = 'cd app && npm install' }
    use { 'onsails/lspkind-nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

    -- AUTOCOMPLETION / SNIPPETS / AI
    use {
      'hrsh7th/nvim-cmp',
      requires = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-emoji',
        'saadparwaiz1/cmp_luasnip',
        'L3MON4D3/LuaSnip',
        'rafamadriz/friendly-snippets',
        'onsails/lspkind-nvim',
        { '0x100101/lab.nvim', run = 'cd js && npm ci' },
        {
          'tzachar/cmp-tabnine',
          run = './install.sh',
        },
      },
    }

    -- FORMATTINGS / DIAGNOSTICS / CODE ACTIONS
    use { 'jose-elias-alvarez/null-ls.nvim', requires = 'nvim-lua/plenary.nvim' }

    -- HIGHLIGHT
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'norcalli/nvim-colorizer.lua'

    -- FILE EXPLORER
    use { 'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim' }
    use { 'kyazdani42/nvim-tree.lua', tag = 'nightly', requires = { 'kyazdani42/nvim-web-devicons' } }
    use { 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' }

    -- DEVELOPMENT
    use 'windwp/nvim-ts-autotag'
    use 'windwp/nvim-autopairs'
    use 'numToStr/Comment.nvim'
    use 'folke/trouble.nvim'
    use 'folke/todo-comments.nvim'
    use 'lukas-reineke/indent-blankline.nvim'

    -- GIT
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
    use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }

    -- IDE
    use 'rebelot/kanagawa.nvim'
    use 'folke/lua-dev.nvim'
    use 'folke/which-key.nvim'
    use 'rcarriga/nvim-notify'
    use 'akinsho/toggleterm.nvim'

    -- UI
    use 'glepnir/dashboard-nvim'
    use 'j-hui/fidget.nvim'
    use 'SmiteshP/nvim-gps'
    use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
    -- use 'stevearc/dressing.nvim'

    -- MOTION
    use 'phaazon/hop.nvim'

    -- PERFORMANCE
    use 'lewis6991/impatient.nvim'

    -- SESSION
    use 'rmagatti/auto-session'

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
        return require('packer.util').float { border = 'rounded' }
      end,
    },
  },
}

vim.cmd [[
  augroup packer_ide_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]
