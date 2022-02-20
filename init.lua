require('user.colors')
require('user.settings')
require('user.variables')
require('user.mapping')
require('plugins')

vim.notify('Welcome to Neovim!')

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
