local utils = require('utils')
local theme = user.theme

local onedarkpro = require('onedarkpro')

onedarkpro.setup({
  dark_theme = 'onedark', -- The default dark theme
  light_theme = 'onelight', -- The default light theme
  -- Theme can be overwritten with 'onedark' or 'onelight' as a string
  colors = {}, -- Override default colors by specifying colors for 'onelight' or 'onedark' themes
  hlgroups = {}, -- Override default highlight groups
  filetype_hlgroups = {}, -- Override default highlight groups for specific filetypes
  plugins = { -- Override which plugins highlight groups are loaded
    native_lsp = true,
    polygot = true,
    treesitter = true,
    -- NOTE: Other plugins have been omitted for brevity
  },
  styles = {
    strings = 'NONE', -- Style that is applied to strings
    comments = utils.set_italic(theme.italic_comments), -- Style that is applied to comments
    keywords = utils.set_italic(theme.italic_keywords), -- Style that is applied to keywords
    functions = utils.set_italic(theme.italic_functions), -- Style that is applied to functions
    variables = utils.set_italic(theme.italic_variables), -- Style that is applied to variables
    virtual_text = 'NONE', -- Style that is applied to virtual text
  },
  options = {
    bold = false, -- Use the themes opinionated bold styles?
    italic = false, -- Use the themes opinionated italic styles?
    underline = false, -- Use the themes opinionated underline styles?
    undercurl = false, -- Use the themes opinionated undercurl styles?
    cursorline = false, -- Use cursorline highlighting?
    transparency = theme.transparent, -- Use a transparent background?
    terminal_colors = false, -- Use the theme's colors for Neovim's :terminal?
    window_unfocussed_color = false, -- When the window is out of focus, change the normal background?
  },
})
