local plugins_folder = 'core.'

if not packer_done then
  return
end

local success, result = pcall(function()
  require(plugins_folder .. 'alpha')
  require(plugins_folder .. 'autopairs')
  require(plugins_folder .. 'autotag')
  require(plugins_folder .. 'bufferline')
  require(plugins_folder .. 'cmp')
  require(plugins_folder .. 'colorizer')
  require(plugins_folder .. 'devicons')
  require(plugins_folder .. 'diffview')
  require(plugins_folder .. 'gitsigns')
  require(plugins_folder .. 'lsp_installer')
  require(plugins_folder .. 'lsp_signature')
  require(plugins_folder .. 'lsp')
  require(plugins_folder .. 'lualine')
  require(plugins_folder .. 'null-ls')
  require(plugins_folder .. 'telescope')
  require(plugins_folder .. 'toggleterm')
  require(plugins_folder .. 'tree')
  require(plugins_folder .. 'treesitter')
  require(plugins_folder .. 'lightbulb')
  require(plugins_folder .. 'fidget')
  require(plugins_folder .. 'which-key')
end)

if not success then
  if type(vim.notify) ~= 'nil' then
    vim.notify(result, 'error')
  end
end
