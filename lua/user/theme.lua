local theme = user.theme

if theme.colorscheme == 'tokyonight' then
  vim.g.tokyonight_style = theme.style or 'storm'
  vim.g.tokyonight_transparent = theme.transparent
  vim.g.tokyonight_italic_comments = theme.italic_comments
  vim.g.tokyonight_italic_keywords = theme.italic_keywords
  vim.g.tokyonight_italic_functions = theme.italic_functions
  vim.g.tokyonight_italic_variables = theme.italic_variables

  vim.notify.setup({
    background_colour = '#1f2335',
  })
else
  local background_colour = '#1E232A' -- onedarker

  if theme.colorscheme == 'solarized' then
    background_colour = '#073642'
  end

  if theme.colorscheme == 'darkplus' then
    background_colour = '#1E1E1E'
  end

  vim.g.transparent_background = theme.transparent -- transparent background(Default: false)
  vim.g.italic_comments = theme.italic_comments -- italic comments(Default: true)
  vim.g.italic_keywords = theme.italic_keywords -- italic keywords(Default: true)
  vim.g.italic_functions = theme.italic_functions -- italic functions(Default: false)
  vim.g.italic_variables = theme.italic_variables -- italic variables(Default: false)

  vim.notify.setup({
    background_colour = background_colour,
  })
end

vim.cmd(string.format('colorscheme %s', theme.colorscheme))
