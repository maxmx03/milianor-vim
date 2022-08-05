local success, lspconfig = pcall(require, 'lspconfig')

if not success then
  return
end

local user = require 'user.config'
local icons = require 'core.icons'

local on_attach = function(_, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  local bufopts = { noremap = true, silent = true, buffer = bufnr }

  vim.keymap.set('n', '<space>l', vim.lsp.buf.format, bufopts)

  if user.auto_save then
    vim.api.nvim_create_autocmd({ 'InsertLeave', 'TextChanged' }, {
      buffer = bufnr,
      command = 'update',
    })
  end

  vim.cmd [[
    augroup LspFormatting
      autocmd! * <buffer>
      autocmd BufWritePre <buffer> lua vim.lsp.buf.format()
    augroup END
  ]]
end

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
  if server == 'sumneko_lua' then
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

vim.fn.sign_define('DiagnosticSignError', { text = icons.diagnostics.Error, texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = icons.diagnostics.Warning, texthl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo', { text = icons.diagnostics.Information, texthl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = icons.diagnostics.Hint, texthl = 'DiagnosticSignHint' })

vim.diagnostic.config {
  virtual_text = {
    prefix = '',
  },
}
