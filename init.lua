vim.notify = require('notify')

require('user.theme')
require('user.settings')
require('user.mapping')
require('plugins')
local user_servers = require('user.servers')

user_servers:setup({
  javascript = false,
  html = false,
  css = false,
  ruby = false,
  rust = false,
  python = false,
  php = false,
  graphql = false,
  vue = false,
  vim = false,
  java = false,
  golang = false,
  kotlin = false,
  docker = false,
})

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
