local success, kanagawa = pcall(require, 'kanagawa')

if not success then
  return
end

local colors = require('kanagawa.colors').setup()

if colors == nil then
  kanagawa.setup {}

  return
end

local user = require 'user.config'

local transparent = user.transparency

kanagawa.setup {
  transparent = transparent,
  undercurl = true,
  commentStyle = { italic = true },
  keywordStyle = { italic = true },
  statementStyle = { bold = false },
  variablebuiltinStyle = { italic = true },
  overrides = {
    VertSplit = { bg = 'NONE', fg = not transparent and colors.sumiInk0 or colors.fujiGray },

    NvimTreeNormal = { fg = colors.fujiWhite, bg = transparent and 'NONE' or colors.sumiInk0 },
    NvimTreeNormalNC = { link = 'NvimTreeNormal' },
    NvimTreeEndOfBuffer = { fg = colors.sumiInk0 },
    NvimTreeFolderName = { fg = colors.fujiWhite },
    NvimTreeFolderIcon = { fg = colors.oniViolet },
    NvimTreeRootFolder = { fg = colors.oniViolet },
    NvimTreeOpenedFolderName = { fg = colors.oniViolet },

    NeoTreeDirectoryName = { fg = colors.fujiWhite },
    NeoTreeDirectoryIcon = { fg = colors.oniViolet },
    NeoTreeRootName = { fg = colors.oniViolet },

    TelescopePreviewTitle = {
      fg = colors.sumiInk1,
      bg = not transparent and colors.oniViolet or colors.fujiWhite,
    },
    TelescopeResultsTitle = {
      fg = colors.sumiInk1,
      bg = not transparent and colors.oniViolet or colors.fujiWhite,
    },
    TelescopePromptTitle = {
      fg = colors.sumiInk1,
      bg = not transparent and colors.oniViolet or colors.fujiWhite,
    },
    TelescopeNormal = { bg = not transparent and colors.sumiInk1 or 'NONE' },
    TelescopeBorder = {
      fg = not transparent and colors.oniViolet or colors.fujiGray,
      bg = not transparent and colors.sumiInk1 or 'NONE',
    },
    TelescopePromptNormal = {
      fg = colors.fujiWhite,
      bg = not transparent and colors.sumiInk1 or 'NONE',
    },
    TelescopePromptBorder = {
      fg = not transparent and colors.oniViolet or colors.fujiGray,
      bg = not transparent and colors.sumiInk1 or 'NONE',
    },
    TelescopeSelection = {
      fg = colors.boatYellow2,
    },
    TelescopeMatching = {
      fg = colors.carpYellow,
    },

    CmpItemKindTabnine = { fg = colors.peachRed },
    CmpItemKindEmoji = { fg = colors.surimiOrange },
  },
}

vim.cmd 'colorscheme kanagawa'
