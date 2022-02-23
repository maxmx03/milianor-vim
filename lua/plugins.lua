Promise
  :new(function(resolve, reject)
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
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
          'sindrets/diffview.nvim',
          requires = 'nvim-lua/plenary.nvim',
          config = function()
            local success, diffview = pcall(require, 'diffview')

            if success then
              diffview.setup()
            else
              vim.notify('diffview is not working', 'error')
            end
          end,
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
        { 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' },
        {
          'folke/which-key.nvim',
          config = function()
            local success, wk = pcall(require, 'which-key')

            if success then
              wk.setup()
            else
              vim.notify('which-key is not working', 'error')
            end
          end,
        },
        {
          'ray-x/lsp_signature.nvim',
          config = function()
            local success, lsp_signature = pcall(require, 'lsp_signature')

            if success then
              lsp_signature.setup()
            else
              vim.notify('lsp_signature is not working', 'error')
            end
          end,
        },
        {
          'norcalli/nvim-colorizer.lua',
          config = function()
            local success, colorizer = pcall(require, 'colorizer')

            if success then
              colorizer.setup({
                'css',
                'html',
                'javascript',
                'javascriptreact',
                'json',
                'lua',
                'toml',
                'typescript',
                'typescriptreact',
                'scss',
                'svelte',
                'vue',
                'yaml',
                'vim',
              })
            else
              vim.notify('colorizer is not working', 'error')
            end
          end,
        },
        {
          'windwp/nvim-autopairs',
          config = function()
            local success, autopairs = pcall(require, 'nvim-autopairs')

            if success then
              autopairs.setup({
                disable_filetype = { 'TelescopePrompt', 'vim' },
              })
            else
              vim.notify('nvim-autopairs is not working', 'error')
            end
          end,
        },
        {
          'akinsho/toggleterm.nvim',
          config = function()
            local success, toggleterm = pcall(require, 'toggleterm')

            if success then
              toggleterm.setup()
            else
              vim.notify('toggleterm is not working', 'error')
            end
          end,
        },
        {
          'tami5/lspsaga.nvim',
          config = function()
            local success, saga = pcall(require, 'lspsaga')

            if success then
              saga.init_lsp_saga()
            else
              vim.notify('lspsaga is not working', 'error')
            end
          end,
        },
        {
          'lewis6991/gitsigns.nvim',
          requires = {
            'nvim-lua/plenary.nvim',
          },
          config = function()
            local success, gitsigns = pcall(require, 'gitsigns')

            if success then
              gitsigns.setup()
            else
              vim.notify('gitsigns is not working', 'error')
            end
          end,
        },
        {
          'terrortylor/nvim-comment',
          config = function()
            local success, comment = pcall(require, 'nvim_comment')

            if success then
              comment.setup()
            else
              vim.notify('nvim_comment is not working', 'error')
            end
          end,
        },
      })
    end)

    if packer_bootstrap then
      resolve('resolve')
    end
  end)
  :next(function()
    require('packer').sync()
  end)
