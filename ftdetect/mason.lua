local success, mason = pcall(require, 'mason')

if not success then
  return
end

local icons = require 'core.icons'

mason.setup {
  ui = {
    border = 'rounded',
    icons = {
      server_installed = icons.ui.Check,
      server_pending = icons.misc.Squirrel,
      server_uninstalled = icons.ui.Close,
    },
  },
}
