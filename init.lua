require 'plugins'
require 'user'
local user = require 'user.config'

--TODO: enable autosave, <space>l to format
-- user.auto_save = true

-- TODO: Change Theme
-- user.colorscheme = 'kanagawa'
-- user.sidebar = 'left'
-- user.lualine = 'bubbles'
-- user.lualine_colors = {
--   bg = '#16161D',
--   fg = '#C8C093',
--   yellow = '#938056',
--   cyan = '#6A9589',
--   darkblue = '#7E9CD8',
--   green = '#98c379',
--   orange = '#FFA066',
--   violet = '#938AA9',
--   magenta = '#D16D9E',
--   blue = '#658594',
--   red = '#E82424',
--   grey = '#54546D',
-- }

-- TODO: Syntax Highlight, Lsp servers, formats, diagnostics, completions, code actions
user.langs = {
  -- 'css',
  -- 'json',
  -- 'html',
  -- 'javascript',
  -- 'typescript',
  -- 'tsx',
  -- 'lua',
  -- 'vim',
}

user.servers = {
  -- 'tsserver',
  -- 'cssls',
  -- 'html',
  -- 'emmet_ls',
  -- 'sumneko_lua',
  -- 'vimls',
}

user.formattings = {
  -- 'prettier',
  -- 'stylua',
}

user.completions = {
  -- 'spell',
}

user.code_actions = {
  -- 'eslint',
}

user.hovers = {
  -- 'dictionary',
}

-- TODO: Install more plugins
-- user.plugins = {
--    'KabbAmine/vCoolor.vim',
-- }

-- TODO: Insert new keymapping
-- user.keymappings['c'] = {
--   name = 'VCOLOR',
--   r = { ':VCoolor<cr>', 'HASH color' },
--   g = { ':VCoolIns r<cr>', 'RGB color' },
--   h = { ':VCoolIns h<cr>', 'HSL color' },
--   b = { ':VCoolIns ra<cr>', 'RGBA color' },
-- }
