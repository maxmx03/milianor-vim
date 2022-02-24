local success, null_ls = pcall(require, 'null-ls')

if not success then
  vim.notify('null-ls is not working', 'error')
  return
end

local formatting = null_ls.builtins.formatting

null_ls.setup({
  debug = false,
  sources = {
    formatting.prettier,
    formatting.stylua.with({
      extra_args = {
        '--indent-type=Spaces',
        '--indent-width=2',
        '--quote-style=AutoPreferSingle',
        '--line-endings=Unix',
      },
    }),
  },
})
