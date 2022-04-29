local M = {}

function M.setup(...)
  vim.notify(M.plugin .. ' is not working', 'error')
end

function M:require(plugin)
  local success, p = pcall(require, plugin)
  self.plugin = plugin

  if not success then
    return self, false
  end

  return p, true
end

function M:packer_auto_install()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  vim.o.runtimepath = vim.fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath

  if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
      'git',
      'clone',
      '--depth',
      '1',
      'https://github.com/wbthomason/packer.nvim',
      install_path,
    })
  end
end

return M
