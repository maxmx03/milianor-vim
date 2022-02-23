local success, wk = pcall(require, 'which-key')

if success then
  wk.setup()
else
  vim.notify('which-key is not working', 'error')
end
