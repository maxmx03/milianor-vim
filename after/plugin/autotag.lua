local success, autotag = pcall(require, 'nvim-ts-autotag')

if success then
  autotag.setup()
else
  vim.notify('nvim-autotag is not working', 'error')
end
