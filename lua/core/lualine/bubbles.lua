local success, lualine = pcall(require, 'lualine')

if not success then
  return
end

local colors = require 'core.lualine.colors'

local bubbles_theme = {
  normal = {
    a = { fg = colors.bg, bg = colors.violet },
    b = { fg = colors.fg, bg = colors.grey },
    c = { fg = colors.bg, bg = colors.bg },
  },

  insert = { a = { fg = colors.bg, bg = colors.blue } },
  visual = { a = { fg = colors.bg, bg = colors.cyan } },
  replace = { a = { fg = colors.bg, bg = colors.red } },

  inactive = {
    a = { fg = colors.fg, bg = colors.bg },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.bg, bg = colors.bg },
  },
}

lualine.setup {
  options = {
    theme = bubbles_theme,
    component_separators = '|',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 2 },
    },
    lualine_b = { 'filename', 'branch' },
    lualine_c = { 'fileformat' },
    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}
