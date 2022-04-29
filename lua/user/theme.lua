local utils = require('lib.utils')
local theme = user.theme

if theme.colorscheme == 'tokyonight' then
  vim.g.tokyonight_style = theme.style
  vim.g.tokyonight_transparent = theme.transparent
  vim.g.tokyonight_italic_functions = true

  vim.notify.setup({
    background_colour = '#1f2335',
  })
elseif theme.colorscheme == 'onedark' then
  local onedark = utils:require('onedark')

  onedark.setup({
    style = theme.style,
    transparent = theme.transparent,
    term_colors = true,
  })

  vim.notify.setup({
    background_colour = '#333333',
  })
elseif theme.colorscheme == 'solarized' then
  if theme.transparent then
    vim.g.transparent_background = true
  end

  vim.notify.setup({
    background_colour = '#073642',
  })
else
  vim.g.vscode_style = theme.style

  if theme.transparent then
    vim.g.vscode_transparent = 1
  end

  if theme.style == 'dark' then
    vim.notify.setup({
      background_colour = '#262626',
    })
  else
    vim.notify.setup({
      background_colour = '#fafafa',
    })
  end
end

vim.cmd(string.format('colorscheme %s', theme.colorscheme))
