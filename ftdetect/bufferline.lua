local success, bufferline = pcall(require, 'bufferline')

if not success then
  return
end

bufferline.setup {
  options = {
    indicator_icon = '',
    separator_style = {},
  },
}
