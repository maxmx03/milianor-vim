local success, autopairs = pcall(require, 'nvim-autopairs')

if success then
  autopairs.setup({
    disable_filetype = { 'TelescopePrompt', 'vim' },
  })
else
  vim.notify('nvim-autopairs is not working', 'error')
end
