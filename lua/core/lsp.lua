local lspconfig = require 'lspconfig'

local on_attach = function(_, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  vim.cmd [[
    augroup LspFormatting
      autocmd! * <buffer>
      autocmd BufWritePre <buffer> lua vim.lsp.buf.format()
    augroup END
  ]]
end

vim.diagnostic.config {
  virtual_text = {
    prefix = '',
  },
}

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local lsp_flags = {
  debounce_text_changes = 150,
}
local config = {
  on_attach = on_attach,
  capabilities = capabilities,
  flags = lsp_flags,
}

for _, server in pairs(user.servers) do
  if server == 'sumneko_lua' and user.luadev then
    local luadev = require 'lua-dev'

    config = luadev.setup {
      library = {
        vimruntime = true,
        types = true,
        plugins = true,
      },
      runtime_path = false,
      lspconfig = {
        on_attach = on_attach,
        capabilities = capabilities,
        flags = lsp_flags,
      },
    }
  end

  lspconfig[server].setup(config)
end

local success, dartls = pcall(require, 'flutter-tools')

if success then
  dartls.setup {
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
  }
end
