require "user.settings"
require "user.variables"
require "user.mapping"
require "user.colors"
require "plugins"

vim.cmd(
  [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]
)
