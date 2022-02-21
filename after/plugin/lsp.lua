local s1, lsp_installer = pcall(require, 'nvim-lsp-installer')
local s2, dartls = pcall(require, 'flutter-tools')
local s3, lsp = pcall(require, 'lspconfig')

if not s1 and not s2 and not s3 then
  return
end

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
  if client.name == 'tsserver' or client.name == 'rust_analyzer' then
    client.resolved_capabilities.document_formatting = false
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

  --vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  --vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  --vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  --vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
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

local servers = user.servers

for _, name in pairs(servers) do
  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found and not server:is_installed() then
    vim.notify('Installing ' .. name)
    server:install()
  end
end

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
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT',
            -- Setup your lua path
            path = runtime_path,
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = { 'vim' },
          },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file('', true),
          },
          -- Do not send telemetry data containing a randomized but unique identifier
          telemetry = {
            enable = false,
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
