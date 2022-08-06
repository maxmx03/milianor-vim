local success, telescope = pcall(require, 'telescope')

if not success then
  return
end

local icons = require 'core.icons'

telescope.setup {
  defaults = {
    file_ignore_patterns = {
      'node_modules/',
      'node_modules/*',
      '.git/',
      'dist/',
      '.next/',
      'build/',
      'env/',
      'gradle/',
      '.vscode/',
      '__pycache__/',
      '__pycache__/*',
      '.dart_tool/',
      '.github/',
      '.gradle/',
      '.idea/',
      '.settings/',
    },
    prompt_prefix = icons.ui.Telescope,
    selection_caret = ' ',
  },
}
