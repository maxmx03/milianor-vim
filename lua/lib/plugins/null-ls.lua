local null_ls = require('null-ls')

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

if vim.loop.os_uname().sysname == 'Windows' then
  null_ls.setup({
    debug = false,
    sources = {
      formatting.black,
      formatting.dart_format,
      formatting.clang_format,
      formatting.gofmt,
      formatting.prettier,
      formatting.prismaFmt,
      formatting.phpcsfixer,
      formatting.rustfmt,
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
else
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
end
