local status, bufferline = pcall(require, 'bufferline')

if not status then
  return
end

bufferline.setup({
  options = {
    diagnostics = 'nvim_lsp',
    show_close_icon = false,
    max_name_length = 10,
  },
})
