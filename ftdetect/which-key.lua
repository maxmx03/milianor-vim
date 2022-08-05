local success, wk = pcall(require, 'which-key')

if not success then
  return
end

local user = require 'user.config'

wk.setup {
  ignore_missing = true,
}

wk.register(user.keymappings, { prefix = '<space>' })
