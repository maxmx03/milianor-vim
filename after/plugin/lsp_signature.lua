local success, lsp_signature = pcall(require, 'lsp_signature')

if success then
  lsp_signature.setup()
else
  vim.notify('lsp_signature is not working', 'error')
end
