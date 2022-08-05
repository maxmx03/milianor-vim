local success, lab = pcall(require, 'lab')

if not success then
  return
end

lab.setup {
  code_runner = {
    enabled = true,
  },
  quick_data = {
    enabled = false,
  },
}
