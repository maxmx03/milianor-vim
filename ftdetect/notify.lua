local success, notify = pcall(require, 'notify')
local colors = require 'core.lualine.colors'

if not success then
  return
end

vim.notify = notify

vim.notify.setup {
  background_colour = colors.bg,
}
