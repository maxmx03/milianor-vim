local success, diffview = pcall(require, 'diffview')

if success then
  diffview.setup()
else
  vim.notify('diffview is not working', 'error')
end
