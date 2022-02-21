require('user.config')

user:setup({
  servers = {
    'sumneko_lua',
    'tsserver',
    'pylsp',
    'intelephense',
    'solargraph',
    'cssls',
    'jsonls',
    'eslint',
  },
  theme = {
    colorscheme = 'onedark',
    transparent = false,
    style = 'dark',
  },
})

require('user.theme')
require('user.settings')
require('user.mapping')
require('plugins')

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
