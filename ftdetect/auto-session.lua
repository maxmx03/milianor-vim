local success, auto_session = pcall(require, 'auto-session')

if not success then
  return
end

auto_session.setup {
  log_level = 'info',
  auto_session_suppress_dirs = { '~/', '~/.config', '~/.config/kitty', '~/.config/nvim' },
  auto_session_root_dir = vim.fn.stdpath 'cache' .. '/sessions/',
}
