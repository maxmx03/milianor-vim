if User.theme.colorscheme == 'tokyonight' then
  vim.g.tokyonight_style = 'night'
end

vim.cmd(string.format('colorscheme %s', User.theme.colorscheme))
