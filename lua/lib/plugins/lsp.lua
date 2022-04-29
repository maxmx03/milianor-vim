local utils = require('lib.utils')
local lsp_installer = utils:require('nvim-lsp-installer')
local lsp = utils:require('lspconfig')
local dartls = utils:require('flutter-tools')

local function icons()
  local signs = { Error = '', Warn = '', Hint = '', Info = '', Prefix = '' }

  vim.diagnostic.config({
    virtual_text = {
      prefix = signs.Prefix,
    },
  })

  for type, icon in pairs(signs) do
    local hl = 'DiagnosticSign' .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
  end
end

local function format_onsave(client)
  if client.name ~= 'null-ls' then
    client.resolved_capabilities.document_formatting = false
  end

  for _, server_name in pairs(user.enable_server_formatter) do
    if client.name == server_name then
      client.resolved_capabilities.document_formatting = true
      client.resolved_capabilities.document_range_formatting = true
    end
  end

  vim.cmd([[
    augroup LspFormatting
      autocmd! * <buffer>
	  autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
	augroup END
  ]])
end

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(
    bufnr,
    'n',
    '<space>wl',
    '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>',
    opts
  )
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

  format_onsave(client)
  icons()
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

function auto_install(servers)
  local name = servers[vim.bo.filetype]

  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found and not server:is_installed() then
    server:install()
    lsp_installer.info_window.open()
  end
end

vim.cmd([[
  augroup LspAutoInstall
    autocmd!
	autocmd VimEnter <buffer> lua auto_install(user.servers)
  augroup END
]])

lsp_installer.on_server_ready(function(server)
  local config = {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    },
    capabilities = capabilities,
  }

  if server.name == 'sumneko_lua' then
    local runtime_path = vim.split(package.path, ';')
    table.insert(runtime_path, 'lua/?.lua')
    table.insert(runtime_path, 'lua/?/init.lua')

    config = {
      on_attach = on_attach,
      flags = {
        debounce_text_changes = 150,
      },
      capabilities = capabilities,
      settings = {
        Lua = {
          runtime = {
            version = 'LuaJIT',
            path = runtime_path,
          },
          diagnostics = {
            globals = { 'vim' },
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file('', true),
          },
          telemetry = {
            enable = false,
          },
        },
      },
    }
  end

  if server.name == 'vuels' then
    config = {
      on_attach = on_attach,
      flags = {
        debounce_text_changes = 150,
      },
      capabilities = capabilities,
      init_options = {
        config = {
          vetur = {
            ignoreProjectWarning = true,
            completion = {
              autoImport = false,
              tagCasing = 'kebab',
              useScaffoldSnippets = false,
            },
            format = {
              defaultFormatter = {
                js = 'prettier',
                ts = 'prettier',
              },
              defaultFormatterOptions = {},
              scriptInitialIndent = false,
              styleInitialIndent = false,
            },
            useWorkspaceDependencies = false,
            validation = {
              script = true,
              style = true,
              template = true,
            },
          },
        },
      },
    }
  end

  server:setup(config)
end)

lsp.rust_analyzer.setup({
  on_attach = on_attach,
  flags = {
    debounce_text_changes = 150,
  },
  capabilities = capabilities,
})

dartls.setup({
  widget_guides = {
    enabled = true,
  },
  lsp = {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 150,
    },
  },
})