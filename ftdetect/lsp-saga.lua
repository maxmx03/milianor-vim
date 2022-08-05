local success, saga = pcall(require, 'lspsaga')

if not success then
  return
end

saga.init_lsp_saga {}
