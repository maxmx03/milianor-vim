if not user.theme.transparent then
  local utils = require('lib.utils')
  local shade = utils:require('shade')

  shade.setup({})
end
