local success = pcall(function()
  require('plugins')
  require('user.settings')
  require('user.config')
  require('configuration')
  vim.notify = require('notify')
end)

if not success then
  return
end

require('user.theme')
