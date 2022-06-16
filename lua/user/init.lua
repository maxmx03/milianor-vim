user = {}
user.servers = {}
user.theme = {}
user.formatting = {}
user.diagnostics = {}
user.keymapping = {}
user.langs = nil
user.luadev = true
user.plugins = nil
user.lualine_colors = nil

require 'user.theme'
require 'user.keymapping'
require 'user.settings'
require 'user.server'
require 'user.formatting'
require 'user.diagnostics'
require 'user.langs'
require 'user.autocmd'
