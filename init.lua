local success = pcall(function()
  require('plugins')
  require('user.init')
  vim.notify = require('notify')
end)

if not success then
  return
end

-- lua/user/theme.lua
-- user.theme.colorscheme = 'kanagawa' -- tokyonight, solarized, kanagawa
-- user.theme.transparent = false
-- user.theme.lualine = 'evil_lualine' -- default, evil_lualine, bubbles, slanted
-- user.theme.style = 'night' -- tokyonight: night, storm
-- user.theme.sidebar = 'left'
-- user.theme.italic_comments = true
-- user.theme.italic_keywords = true
-- user.theme.italic_functions = false
-- user.theme.italic_variables = false

-- lua/user/langs
-- user.langs = 'all'

-- lua/user/formatting
-- user.formatting = {
--   'prettier',
--   'stylua',
-- }

-- lua/user/diagnostics
-- user.diagnostics = {
--   'eslint',
--   'codespell',
-- }
--
-- lua/user/servers.lua
-- user.servers = {
--   'pylsp',
--   'tsserver',
--   'sumneko_lua',
--   'prismals',
--   'graphql',
--   'cssls',
--   'html',
--   'vuels',
--   'volar',
--   'emmet_ls',
--   'tailwindcss',
--   'svelte',
-- }

require('theme.colorschemes.init')
