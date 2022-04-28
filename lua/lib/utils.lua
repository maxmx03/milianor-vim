local M = {}

function M.setup(...)
  vim.notify(M.plugin .. ' is not working', 'error')
end

function M:require(plugin)
  local success, p = pcall(require, plugin)
  self.plugin = plugin

  if not success then
    return M
  end

  return p
end

return M
