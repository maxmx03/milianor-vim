return {
  {
    'williamboman/mason.nvim',
    dependencies = {
      'williamboman/mason-lspconfig.nvim',
      'neovim/nvim-lspconfig',
      'folke/neodev.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',
    },
    config = function()
      require('mason').setup()
      require('mason-lspconfig').setup {
        automatic_installation = true,
      }
      local formatters = require 'milianor.formatters'

      require('mason-tool-installer').setup {
        ensure_installed = formatters,
        auto_update = true,
        run_on_start = true,
      }
      require('neodev').setup()

      local lsp = require 'lspconfig'

      local signs = { Error = ' ', Warn = ' ', Hint = ' ', Info = ' ' }

      for type, icon in pairs(signs) do
        local hl = 'DiagnosticSign' .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
      end

      vim.diagnostic.config {
        virtual_text = {
          prefix = '●',
        },
      }

      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(ev)
          vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
          local opts = { buffer = ev.buf }

          vim.keymap.set('n', '<S-f>', vim.lsp.buf.format, opts)
        end,
      })

      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local servers = require 'milianor.servers'

      for _, server in ipairs(servers) do
        if server == 'lua_ls' then
          lsp[server].setup {
            settings = {
              lua = {
                completion = {
                  callSnippet = 'Replace',
                },
              },
            },
            capabilities = capabilities,
          }
        else
          lsp[server].setup {
            capabilities = capabilities,
            }
        end
      end
    end,
  },
}
