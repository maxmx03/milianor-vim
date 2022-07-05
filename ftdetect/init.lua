require 'plugins'

local success = pcall(function()
  require 'core.impatient'
  require 'core.notify'
  require 'core.autopairs'
  require 'core.autotag'
  require 'core.bufferline'
  require 'core.cmp'
  require 'core.colorizer'
  require 'core.devicons'
  require 'core.diffview'
  require 'core.gitsigns'
  require 'core.indent_blankline'
  require 'core.lsp_installer'
  require 'core.lsp_signature'
  require 'core.lsp_saga'
  require 'core.lsp'
  require 'core.lualine'
  require 'core.trouble'
  require 'core.null-ls'
  require 'core.telescope'
  require 'core.todo_comments'
  require 'core.dashboard'
  require 'core.toggleterm'
  require 'core.nvim-tree'
  require 'core.treesitter'
  require 'core.fidget'
  require 'core.which-key'
  require 'core.winbar'

  vim.cmd(string.format('colorscheme %s', user.theme.colorscheme))
end)

if not success then
  vim.cmd 'colorscheme slate'
end
