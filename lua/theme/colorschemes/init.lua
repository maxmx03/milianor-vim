require('theme.colorschemes.' .. user.theme.colorscheme)

vim.cmd(string.format('colorscheme %s', user.theme.colorscheme))
