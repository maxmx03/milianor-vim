local Formatter = require "utils.Formatter"

Formatter:setup {
  lua = "luafmt",
  python = "black",
  htmldjango = "prettier",
  javascript = "prettier",
  javascriptreact = "prettier",
  typescript = "prettier",
  typescriptreact = "prettier",
  html = "prettier",
  css = "prettier",
  scss = "prettier",
  less = "prettier",
  json = "prettier",
  markdown = "prettier",
  graphql = "prettier",
  prisma = "prettier",
  yaml = "prettier",
  blade = "bladefmt"
}

vim.cmd [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.rs,*.lua FormatWrite
augroup END
]]
