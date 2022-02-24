user = {}
user.servers = {}
user.disable_server_formatter = {}
user.theme = { colorscheme = 'onedark', transparent = false, style = 'dark', sidebar = 'left' }

function user:setup(o)
  self.theme = o.theme or self.theme
  self.servers = o.servers or self.servers
  self.disable_server_formatter = o.disable_server_formatter or self.disable_server_formatter
end
