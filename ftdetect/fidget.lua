local success, fidget = pcall(require, 'fidget')

if not success then
  return
end

fidget.setup {
  window = {
    blend = 0,
  },
}
