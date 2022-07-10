require 'user.init'

-- TODO: Change Theme
-- user.theme.colorscheme = 'kanagawa'
-- user.theme.sidebar = 'left'
-- user.theme.lualine = 'default'
-- user.theme.lualine_colors = {
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
}

user.servers = {
  -- 'tsserver',
  -- 'cssls',
  -- 'html',
  -- 'emmet_ls',
  -- 'sumneko_lua',
}

user.formattings = {
  -- 'prettier',
  -- 'stylua',
}

user.completions = {
  -- 'spell'.
}

user.code_actions = {
  -- 'eslint'
}

user.hovers = {
  -- 'dictionary',
}

-- TODO: Install more plugins
-- user.plugins = {
--   'justinmk/vim-sneak',
--   {
--     'akinsho/flutter-tools.nvim',
--     requires = { 'nvim-lua/plenary.nvim', 'thosakwe/vim-flutter' },
--   },
-- }

-- TODO: Insert new keymapping
-- user.keymapping['F'] = {
--   name = 'FLUTTER',
--   r = { ':FlutterRun<cr>', 'Flutter run' },
--   R = { ':FlutterHotRestart<cr>', 'Flutter restart' },
--   q = { ':FlutterQuit<cr>', 'Flutter quit' },
--   v = { ':FlutterVisualDebug<cr>', 'Flutter visual debug' },
--   o = { ':FlutterOutlineToggle<cr>', 'Flutter outline debug' },
-- }
