local status, telescope = pcall(require, 'telescope')

if not status then
  vim.notify('telescope is not working', 'error')
  return
end

telescope.setup({
  defaults = {
    file_ignore_patterns = { 'node_modules', '.git', '.next', 'build', 'dist' },
  },
})
