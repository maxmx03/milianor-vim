local success, shade = pcall(require, 'shade')

if not success then
  vim.notify('shade is not working', 'error')
  return
end

if not user.theme.transparent then
  shade.setup({})
end
