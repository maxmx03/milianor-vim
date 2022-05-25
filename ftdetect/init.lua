if Mvim.errors then
  return
end

local validator = require('validator')
local colorscheme = User.theme.colorscheme
local sidebar = User.theme.sidebar
local lualine = User.theme.lualine

if not validator.colorscheme_validate(colorscheme) then
  User.theme.colorscheme = 'tokyonight'
  User.theme.style = 'storm'
  local msg = string.format('invalid colorscheme: %s', colorscheme)

  vim.notify(msg, 'warn')
end

if not validator.sidebar_validate(sidebar) then
  User.theme.sidebar = 'left'
  local msg = string.format('invalid sidebar: %s', sidebar)

  vim.notify(msg, 'warn')
end

if not validator.lualine_validate(lualine) then
  User.theme.lualine = 'evil_lualine'
  local msg = string.format('invalid lualine: %s', lualine)

  vim.notify(msg, 'warn')
end

require('theme.colorschemes.init')
