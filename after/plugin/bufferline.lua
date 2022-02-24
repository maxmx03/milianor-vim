local success, bufferline = pcall(require, 'bufferline')

if not success then
  vim.notify('bufferline is not working', 'error')
  return
end

bufferline.setup({
  options = {
    diagnostics = 'nvim_lsp',
    show_close_icon = false,
    max_name_length = 10,
  },
})
