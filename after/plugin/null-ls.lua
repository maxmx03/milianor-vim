local success, null_ls = pcall(require, 'null-ls')

if not success then
  vim.notify('null-ls is not working', 'error')
  return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
  debug = false,
  sources = {
    formatting.prettier.with({
      disabled_filetypes = { 'vue' },
    }),
    formatting.rustfmt,
    formatting.dart_format,
    formatting.stylua.with({
      extra_args = {
        '--indent-type=Spaces',
        '--indent-width=2',
        '--quote-style=AutoPreferSingle',
        '--line-endings=Unix',
      },
    }),
    diagnostics.eslint,
  },
})
