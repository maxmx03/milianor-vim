if user.theme.lualine == 'bubbles' then
  require('lib.plugins.lualine_config.bubbles')
elseif user.theme.lualine == 'evil_lualine' then
  require('lib.plugins.lualine_config.evil_lualine')
elseif user.theme.lualine == 'slanted' then
  require('lib.plugins.lualine_config.slanted')
else
  require('lib.plugins.lualine_config.default')
end
