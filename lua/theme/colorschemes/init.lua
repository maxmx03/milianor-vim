if user.theme.colorscheme == 'tokyonight' then
  vim.g.tokyonight_style = 'night'
end

vim.cmd(string.format('colorscheme %s', user.theme.colorscheme))
