local treesitter = require 'nvim-treesitter.configs'
local colors = require 'theme.rainbow.colors'

treesitter.setup {
  -- A list of parser names, or "all"
  ensure_installed = user.langs,
  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,
  -- List of parsers to ignore installing
  -- ignore_install = {},
  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    -- list of language that will be disabled
    disable = { 'c', 'rust' },
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  rainbow = {
    enable = user.theme.rainbow,
    disable = { 'html' },
    extended_mode = true,
    max_file_lines = nil,
    colors = colors,
  },
}
