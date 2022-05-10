local theme = user.theme

if theme.colorscheme == 'tokyonight' then
  require('theme.colorschemes.tokyonight')
elseif theme.colorscheme == 'onedarkpro' then
  require('theme.colorschemes.onedarkpro')
elseif theme.colorscheme == 'solarized' then
  require('theme.colorschemes.solarized')
elseif theme.colorscheme == 'kanagawa' then
  require('theme.colorschemes.kanagawa')
elseif theme.colorscheme == 'onedarker' then
  require('theme.colorschemes.onedarker')
elseif theme.colorscheme == 'gruvbox' then
  require('theme.colorschemes.gruvbox')
elseif theme.colorscheme == 'dracula' then
  require('theme.colorschemes.dracula')
else
  require('theme.colorschemes.darkplus')
end

vim.cmd(string.format('colorscheme %s', user.theme.colorscheme))
