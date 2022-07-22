vim.api.nvim_create_autocmd({ 'BufWinEnter' }, {
  pattern = { '*.html', '*.css', '*.scss', '*.vue', '*.svelte' },
  once = true,
  callback = function()
    vim.cmd 'set formatoptions-=cro'
  end,
})
