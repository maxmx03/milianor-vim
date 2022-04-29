user = {}
user.servers = {}
user.enable_server_formatter = {}
user.theme = { colorscheme = 'solarized', transparent = false, style = nil, sidebar = 'left' }

function user:setup(o)
  self.theme = o.theme or self.theme
  self.servers = o.servers or self.servers
  self.enable_server_formatter = o.enable_server_formatter or self.enable_server_formatter
end
