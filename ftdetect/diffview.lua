local success, diffview = pcall(require, 'diffview')

if not success then
  return
end

diffview.setup {}
