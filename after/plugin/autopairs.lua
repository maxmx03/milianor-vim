local utils = require('lib.utils')
local autopairs = utils:require('nvim-autopairs')

autopairs.setup({
  disable_filetype = { 'TelescopePrompt', 'vim' },
})
