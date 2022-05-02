if user.theme.lualine == 'bubbles' then
  require('theme.lualine.bubbles')
elseif user.theme.lualine == 'evil_lualine' then
  require('theme.lualine.evil_lualine')
elseif user.theme.lualine == 'slanted' then
  require('theme.lualine.slanted')
else
  require('theme.lualine.default')
end
