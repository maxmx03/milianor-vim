local utils = require('lib.utils')
local null_ls = utils:require('null-ls')

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
  debug = false,
  sources = {
    formatting.prettier.with({
      extra_args = {
        '--single-quote',
        '--no-semi',
      },
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
