local success, indent = pcall(require, 'indent_blankline')

if not success then
  return
end

indent.setup {}
