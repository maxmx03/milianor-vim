local status, telescope = pcall(require, 'telescope')

if not status then
  vim.notify('error in after/plugin/telescope.lua', 'error')
  return
end

telescope.setup({
  defaults = {
    file_ignore_patterns = { 'node_modules', '.git', '.next', 'build', 'dist' },
  },
})
