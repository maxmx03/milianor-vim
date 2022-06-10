if User.errors then
  return
end

local success, result = pcall(function()
  require('core.alpha')
  require('core.autopairs')
  require('core.autotag')
  require('core.bufferline')
  require('core.cmp')
  require('core.colorizer')
  require('core.devicons')
  require('core.diffview')
  require('core.gitsigns')
  require('core.lsp_installer')
  require('core.lsp_signature')
  require('core.lsp')
  require('core.lualine')
  require('core.trouble')
  require('core.null-ls')
  require('core.telescope')
  require('core.todo_comments')
  require('core.toggleterm')
  require('core.neo-tree')
  require('core.treesitter')
  require('core.lightbulb')
  require('core.fidget')
  require('core.which-key')
  require('core.winbar')
end)

if not success then
  if type(vim.notify) ~= 'nil' then
    vim.notify(result, 'error')
  end
end
