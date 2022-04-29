local utils = require('lib.utils')
local autopairs, success = utils:require('nvim-autopairs')

autopairs.setup({
  disable_filetype = { 'TelescopePrompt', 'vim' },
})
