if Mvim.errors then
  return
end

local success, result = pcall(function()
  local import = function(plugin)
    local plugins_folder = 'core.'

    require(plugins_folder .. plugin)
  end

  import('alpha')
  import('autopairs')
  import('autotag')
  import('bufferline')
  import('cmp')
  import('colorizer')
  import('devicons')
  import('diffview')
  import('gitsigns')
  import('lsp_installer')
  import('lsp_signature')
  import('lsp')
  import('lualine')
  import('trouble')
  import('null-ls')
  import('telescope')
  import('todo_comments')
  import('toggleterm')
  import('tree')
  import('treesitter')
  import('lightbulb')
  import('fidget')
  import('which-key')
  import('winbar')
end)

if not success then
  if type(vim.notify) ~= 'nil' then
    vim.notify(result, 'error')
  end
end
