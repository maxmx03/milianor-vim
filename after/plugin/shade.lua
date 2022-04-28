local utils = require('lib.utils')
local shade = utils:require('shade')

if not user.theme.transparent then
  shade.setup({})
end
