local success, toggleterm = pcall(require, 'toggleterm')

if not success then
  return
end

toggleterm.setup {
  direction = 'float',
  float_opts = {
    border = 'rounded',
  },
}
