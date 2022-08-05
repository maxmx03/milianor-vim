local success, trouble = pcall(require, 'trouble')

if not success then
  return
end

trouble.setup {}
