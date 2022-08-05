local success, telescope = pcall(require, 'telescope')

if not success then
  return
end

local icons = require 'core.icons'

telescope.setup {
  defaults = {
    file_ignore_patterns = { 'node_modules', '.git', '.next', 'build', 'dist' },
    prompt_prefix = icons.ui.Telescope,
    selection_caret = ' ',
  },
}
