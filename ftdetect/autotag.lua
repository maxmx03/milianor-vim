local success, autotag = pcall(require, 'nvim-ts-autotag')

if not success then
  return
end

autotag.setup()
