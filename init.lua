vim.notify = require('notify')

require('user.theme')
require('user.settings')
require('user.mapping')
require('plugins')
local user_servers = require('user.servers')

user_servers:setup({
  javascript = true,
  html = true,
  css = true,
  ruby = true,
  rust = true,
  python = true,
  php = true,
  graphql = true,
  vue = true,
  docker = true,
})

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
