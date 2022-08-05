local success, lsp_installer = pcall(require, 'nvim-lsp-installer')

if not success then
  return
end

local user = require 'user.config'
local icons = require 'core.icons'

lsp_installer.setup {
  ensure_installed = user.servers,
  automatic_installation = true,
  ui = {
    icons = {
      server_installed = icons.ui.Check,
      server_pending = icons.misc.Squirrel,
      server_uninstalled = icons.ui.Close,
    },
  },
}
