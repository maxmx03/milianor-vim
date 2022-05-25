local kanagawa = require('kanagawa')
local utils = require('utils')
local theme = User.theme

kanagawa.setup({
  undercurl = true, -- enable undercurls
  commentStyle = utils.set_italic(theme.italic_comments),
  functionStyle = utils.set_italic(theme.italic_functions),
  keywordStyle = utils.set_italic(theme.italic_keywords),
  statementStyle = 'bold',
  typeStyle = 'NONE',
  variablebuiltinStyle = 'italic',
  specialReturn = true, -- special highlight for the return keyword
  specialException = true, -- special highlight for exception handling keywords
  transparent = theme.transparent, -- do not set background color
  dimInactive = false, -- dim inactive window `:h hl-NormalNC`
  globalStatus = false, -- adjust window separators highlight for laststatus=3
  colors = {},
  overrides = {},
})
