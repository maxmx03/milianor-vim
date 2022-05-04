local lspconfig = require('lspconfig')
local dartls = require('flutter-tools')

local on_attach = function(_, bufnr)
  local signs = { Error = '', Warn = '', Hint = '', Info = '', Prefix = '' }

  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  vim.diagnostic.config({
    virtual_text = {
      prefix = signs.Prefix,
    },
  })

  for type, icon in pairs(signs) do
    local hl = 'DiagnosticSign' .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
  end

  vim.cmd([[
    augroup LspFormatting
      autocmd! * <buffer>
	  autocmd BufWritePre <buffer> lua vim.lsp.buf.format()
	augroup END
  ]])
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/init.lua')

local servers = user.servers
for _, lsp in pairs(servers) do
  require('lspconfig')[lsp].setup({
    on_attach = on_attach,
    flags = {
      -- This will be the default in neovim 0.7+
      debounce_text_changes = 150,
    },
  })
end

lspconfig.sumneko_lua.setup({
  on_attach = on_attach,
  flags = {
    -- This will be the default in neovim 0.7+
    debounce_text_changes = 150,
  },
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
