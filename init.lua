local success = pcall(function()
  require('plugins')
  require('user.init')
  vim.notify = require('notify')
end)

if not success then
  return
end

-- You can place your custom config bellow or to go lua/user folder to customize
-- ex:
--
-- lua/user/theme.lua
-- user.theme.colorscheme = 'dracula' -- tokyonight, onedarker, darkplus, solarized, kanagawa, gruvbox, doom-one, onedarkpro, dracula
-- user.theme.transparent = false
-- user.theme.lualine = 'bubbles' -- default, evil_lualine, bubbles, slanted
-- user.theme.style = 'night' -- tokyonight: night, storm
-- user.theme.sidebar = 'left'
-- user.theme.italic_comments = true
-- user.theme.italic_keywords = true
-- user.theme.italic_functions = false
-- user.theme.italic_variables = f
--
-- lua/user/servers.lua
-- user.servers = {
--   'pyright',
--   'tsserver',
--   'sumneko_lua'
-- }

require('theme.colorschemes.init')
