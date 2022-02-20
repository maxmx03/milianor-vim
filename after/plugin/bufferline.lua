local status, bufferline = pcall(require, 'bufferline')

if not status then
  vim.notify('error in after/plugin/bufferline.lua', 'error')
  return
end

bufferline.setup({
  options = {
    diagnostics = 'nvim_lsp',
    show_close_icon = false,
    max_name_length = 10,
  },
})
