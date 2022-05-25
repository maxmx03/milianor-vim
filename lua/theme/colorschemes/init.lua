require('theme.colorschemes.' .. User.theme.colorscheme)

vim.cmd(string.format('colorscheme %s', User.theme.colorscheme))
