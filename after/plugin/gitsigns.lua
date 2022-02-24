local success, gitsigns = pcall(require, 'gitsigns')

if success then
  gitsigns.setup()
else
  vim.notify('gitsigns is not working', 'error')
end
