Mvim = {} --{{{
Mvim.errors = false
Mvim.packer_bootstrap = nil

local success = pcall(function()
  require('user.init')
  require('bootstrap')
  require('plugins')
end)

if not success then
  Mvim.errors = true
  return
end --}}}

-- lua/user/theme.lua
-- User.luadev = true
-- User.theme.colorscheme = 'kanagawa' -- tokyonight, solarized, kanagawa
-- User.theme.transparent = false
-- User.theme.lualine = 'bubbles' -- default, evil_lualine, bubbles, slanted
-- -- user.theme.style = 'night' -- tokyonight: night, storm
-- User.theme.sidebar = 'left' -- left, right, bottom, top
-- User.theme.italic_comments = true
-- User.theme.italic_keywords = true
-- User.theme.italic_functions = false
-- User.theme.italic_variables = false

-- lua/user/langs
-- user.langs = 'all'

-- lua/user/formatting
-- User.formatting = {
--   'prettier',
--   'stylua',
-- }
--
-- -- lua/user/diagnostics
-- User.diagnostics = {
--   'eslint',
--   'misspell',
-- }
--
-- -- lua/user/servers.lua
-- User.servers = {
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
