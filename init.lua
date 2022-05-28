Mvim = {}
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
end

-- TODO: lua/user/theme.lua
-- User.luadev = false
-- User.theme.colorscheme = 'kanagawa' -- tokyonight, solarized, kanagawa
-- User.theme.transparent = false
-- User.theme.lualine = 'bubbles' -- default, evil_lualine, bubbles, slanted
-- User.theme.style = 'night' -- tokyonight: night, storm
-- User.theme.sidebar = 'left' -- left, right, bottom, top
-- User.theme.italic_comments = true
-- User.theme.italic_keywords = true
-- User.theme.italic_functions = false
-- User.theme.italic_variables = false

-- TODO: lua/user/langs
-- User.langs = {
--   'bash',
--   'c',
--   'c_sharp',
--   'cpp',
--   'css',
--   'dart',
--   'fish',
--   'go',
--   'graphql',
--   'html',
--   'java',
--   'javascript',
--   'json',
--   'kotlin',
--   'lua',
--   'markdown',
--   'php',
--   'prisma',
--   'python',
--   'regex',
--   'scss',
--   'svelte',
--   'tsx',
--   'typescript',
--   'vim',
--   'vue',
--   'yaml',
-- }

-- TODO: lua/user/formatting
-- User.formatting = {
--   'prettier',
--   'stylua',
-- }

-- TODO: lua/user/diagnostics
-- User.diagnostics = {
--   'eslint',
-- }

-- TODO: lua/user/servers
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
