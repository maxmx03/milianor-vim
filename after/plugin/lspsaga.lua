local success, saga = pcall(require, 'lspsaga')

if success then
  saga.init_lsp_saga()
else
  vim.notify('lspsaga is not working', 'error')
end
