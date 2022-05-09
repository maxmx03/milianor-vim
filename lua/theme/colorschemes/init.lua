require('theme.colorschemes.tokyonight')
require('theme.colorschemes.onedarkpro')
require('theme.colorschemes.solarized')
require('theme.colorschemes.kanagawa')
require('theme.colorschemes.onedarker')
require('theme.colorschemes.darkplus')

vim.cmd(string.format('colorscheme %s', user.theme.colorscheme))
