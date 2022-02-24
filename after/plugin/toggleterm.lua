local success, toggleterm = pcall(require, 'toggleterm')

if success then
  toggleterm.setup()
else
  vim.notify('toggleterm is not working', 'error')
end
