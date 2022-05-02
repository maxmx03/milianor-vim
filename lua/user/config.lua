user = {}
user.servers = {}
user.theme = {
  colorscheme = 'onedarker',
  transparent = false,
  style = nil,
  sidebar = 'left',
  italic_comments = true,
  italic_keywords = true,
  italic_functions = false,
  italic_variables = false,
  lualine = 'evil_lualine',
}
user.keymapping = function() end

function user:setup(o)
  self.theme = o.theme or self.theme
  self.servers = o.servers or self.servers
  self.enable_server_formatter = o.enable_server_formatter or self.enable_server_formatter
  self.keymapping = o.keymapping or self.keymapping

  local success, notify = pcall(require, 'notify')

  if success then
    vim.notify = notify
    require('user.theme')
    self.keymapping()
  else
    vim.notify = nil
  end
end
