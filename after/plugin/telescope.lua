local utils = require('lib.utils')
local telescope = utils:require('telescope')

telescope.setup({
  defaults = {
    file_ignore_patterns = { 'node_modules', '.git', '.next', 'build', 'dist' },
  },
})
