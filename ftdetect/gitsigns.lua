local success, gitsigns = pcall(require, 'gitsigns')

if not success then
  return
end

gitsigns.setup {}
