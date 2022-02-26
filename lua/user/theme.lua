local theme = user.theme

if theme.colorscheme == 'tokyonight' then
  vim.g.tokyonight_style = theme.style
  vim.g.tokyonight_transparent = theme.transparent
  vim.g.tokyonight_italic_functions = true

  vim.notify.setup({
    background_colour = '#1f2335',
  })
elseif theme.colorscheme == 'onedark' then
  local success1, onedark = pcall(require, 'onedark')

  if not success1 then
    return
  end

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
    vim.g.solarized_termtrans = 1
  end

  vim.notify.setup({
    background_colour = '#001e26',
  })
else
  vim.g.vscode_style = theme.style

  if theme.transparent then
    vim.g.vscode_transparent = 1
  end

  vim.notify.setup({
    background_colour = '#333333',
  })
end

vim.cmd(string.format('colorscheme %s', theme.colorscheme))
