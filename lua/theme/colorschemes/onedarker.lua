local theme = user.theme

if theme.colorscheme == 'onedarker' then
  local background_colour = '#1E232A'

  vim.g.transparent_background = theme.transparent -- transparent background(Default: false)
  vim.g.italic_comments = theme.italic_comments -- italic comments(Default: true)
  vim.g.italic_keywords = theme.italic_keywords -- italic keywords(Default: true)
  vim.g.italic_functions = theme.italic_functions -- italic functions(Default: false)
  vim.g.italic_variables = theme.italic_variables -- italic variables(Default: false)

  vim.notify.setup({
    background_colour = background_colour,
  })
end
