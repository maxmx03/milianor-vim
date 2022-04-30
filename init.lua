local Promise = require('lib.promise')
local utils = require('lib.utils')

utils:packer_auto_install()

Promise --{{{
  :new(function(resolve, reject)
    local success, result = pcall(function()
      require('plugins')
    end)

    if not success then
      reject(Promise, result)
      return
    end

    resolve(Promise, 'success')
  end)
  :next(function()
    local success, notify = pcall(require, 'notify')

    if not success then
      vim.notify = function(...) end

      error('Error in vim.notify')
      return
    end

    vim.notify = notify
    require('user.config')
    require('user.settings')
    require('user.mapping')
  end)
  :catch(function(error_message)
    print(string.format('Something went wrong: %s', error_message))
  end) --}}}
  :finally(function()
    user:setup({
      -- place your lsp servers bellow
      -- for more: https://github.com/williamboman/nvim-lsp-installer
      servers = {
        javascript = 'tsserver',
        typescript = 'tsserver',
        bash = 'bashls',
        c = 'clangd',
        cs = 'csharp_ls',
        css = 'cssls',
        cpp = 'clangd',
        deno = 'denols',
        docker = 'dockerls',
        go = 'gopls',
        graphql = 'graphql',
        html = 'html',
        json = 'jsonls',
        java = 'jdtls',
        julia = 'julials',
        kotlin = 'kotlin_language_server',
        lua = 'sumneko_lua',
        php = 'intelephense',
        python = 'pylsp',
        prisma = 'prismals',
        r = 'r_language_server',
        ruby = 'solargraph',
        rust = 'rust_analyzer',
        svelte = 'svelte',
        swift = '	sourcekit',
        terraform = 'terraformls',
        sql = 'sqls',
        toml = 'taplo',
        vue = 'vuels',
        xml = 'lemminx',
        yaml = 'yamlls',
      },
      -- disable lsp default formatter to use null_instead
      enable_server_formatter = {
        'svelte',
        'vuels',
        'pylsp',
        'jdtls',
        'clandg',
        'solargraph',
        'intelephnse',
        'gols',
      },
      -- change your default theme,
      --
      -- tokyonight
      -- style: 'storm', 'night'
      --
      -- onedarker
      -- style: nil
      --
      -- darkplus
      -- style: nil
      --
      -- solarized
      -- style: nil
      theme = {
        colorscheme = 'onedarker',
        transparent = false,
        style = nil,
        sidebar = 'left',
        italic_comments = true,
        italic_keywords = true,
        italic_functions = false,
        italic_variables = false,
      },
    })

    require('user.theme')
  end)

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
