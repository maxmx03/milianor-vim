user = {}
user.servers = {}
user.theme = {}
user.formatting = {}
user.diagnostics = {}
user.keymapping = {}
user.langs = nil

require('user.theme')
require('user.keymapping')
require('user.settings')
require('user.server')
require('user.formatting')
require('user.diagnostics')
require('user.langs')
