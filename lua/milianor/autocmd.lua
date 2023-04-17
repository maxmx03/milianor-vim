vim.api.nvim_create_autocmd({ 'InsertLeave', 'TextChanged' }, {
  pattern = '*.*',
  command = 'update',
})

vim.api.nvim_create_autocmd({ 'BufWinEnter' }, {
  pattern = '*.md',
  command = 'set colorcolumn=100',
})

vim.api.nvim_create_autocmd({ 'BufWinLeave' }, {
  pattern = '*.md',
  command = 'set colorcolumn=99999',
})
