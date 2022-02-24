user = {}
user.servers = {}
user.theme = { colorscheme = 'onedark', transparent = false, style = 'dark', sidebar = 'left' }

function user:setup(o)
  self.theme = o.theme or self.theme
  self.servers = o.servers or self.servers
end
