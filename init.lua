local function try_catch()
  require('user.config')

  -- change your default theme,
  -- colorschemes: onedark, tokyonight, vscode
  --
  -- styles
  --
  -- tokyonight
  -- style: 'storm', 'night'
  --
  -- onedark
  -- style: 'dark', 'darker', 'deep', 'cool', 'warm', 'warmer'
  --
  -- vscode
  -- style: 'dark', 'light'
  -- user:setup({
  -- theme = {
  -- colorscheme = 'tokyonight',
  -- transparent = false,
  -- style = 'night',
  -- sidebar = 'left',
  -- },
  -- })

  require('user.settings')
  require('user.theme')
  require('user.mapping')
  require('plugins')
end

local success = pcall(try_catch)

if not success then
  print('error in user folder')
else
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
