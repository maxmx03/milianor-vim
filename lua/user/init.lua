User = {}
User.servers = {}
User.theme = {}
User.formatting = {}
User.diagnostics = {}
User.keymapping = {}
User.langs = nil
User.luadev = true
User.errors = true
User.packer_bootstrap = nil
User.plugins = nil
User.lualine_colors = nil

require('user.theme')
require('user.keymapping')
require('user.settings')
require('user.server')
require('user.formatting')
require('user.diagnostics')
require('user.langs')
require('user.autocmd')
