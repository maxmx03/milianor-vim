user = {}
user.servers = {}
user.enable_server_formatter = {}
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

function user:setup(o)
  self.theme = o.theme or self.theme
  self.servers = o.servers or self.servers
  self.enable_server_formatter = o.enable_server_formatter or self.enable_server_formatter
end
