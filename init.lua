require('user.config')

user:setup({
  theme = {
    colorscheme = 'onedark',
    transparent = false,
    style = 'darker',
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
