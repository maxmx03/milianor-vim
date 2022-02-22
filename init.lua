require('user.config')

--[[
-- change your default theme, colorschemes: onedark, tokyonight, vscode
user:setup({
  theme = {
    colorscheme = 'tokyonight',
    transparent = false,
    style = 'night',
  },
})
]]

require('user.settings')
require('user.theme')
require('user.mapping')
require('plugins')

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
