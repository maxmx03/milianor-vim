local success, comment = pcall(require, 'nvim_comment')

if success then
  comment.setup()
else
  vim.notify('nvim_comment is not working', 'error')
end
