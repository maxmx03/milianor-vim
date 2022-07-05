local kanagawa = require 'kanagawa'

kanagawa.setup {
  undercurl = true, -- enable undercurls
  commentStyle = { italic = true },
  keywordStyle = { italic = true },
  statementStyle = { bold = false },
  variablebuiltinStyle = { italic = true },
  transparent = false, -- do not set background color
}

vim.cmd(string.format('colorscheme %s', user.theme.colorscheme))
