local theme = user.theme

vim.g.dracula_transparent_bg = user.theme.transparent
vim.g.dracula_italic_comment = user.theme.italic_comments

vim.notify.setup({
  background_colour = '#282A36',
})
