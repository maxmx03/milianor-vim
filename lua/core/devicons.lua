local devicons = require 'nvim-web-devicons'

local function icon_config(icon, color, name)
  return {
    icon = icon,
    color = color,
    name = name,
  }
end

-- custom icons
local git_icon, git_color = '', '#C84b31'
local test_icon = ''
local angular_icon = ''

-- custom colors
local ruby_color = '#FC4F4F'
local gem_color = '#FA4EAB'
local rubocop_color = '#C0C0C0'

-- default icons
local ruby_icon = devicons.get_icon_color('index.rb', 'rb')

-- default colors
local _, js_color = devicons.get_icon_color('index.js', 'js')
local _, ts_color = devicons.get_icon_color('index.ts', 'ts')
local _, html_color = devicons.get_icon_color('index.html', 'html')
local _, css_color = devicons.get_icon_color('index.css', 'css')

devicons.set_icon {
  -- git
  ['.gitignore'] = icon_config(git_icon, git_color, 'git'),
  ['.gitkeep'] = icon_config(git_icon, git_color, 'git'),

  -- ruby
  rb = icon_config(ruby_icon, ruby_color, 'ruby'),
  ['config.ru'] = icon_config(ruby_icon, ruby_color, 'ruby'),
  ['Gemfile'] = icon_config(ruby_icon, gem_color, 'ruby'),
  ['.rubocop.yml'] = icon_config(ruby_icon, rubocop_color, 'yaml'),

  -- test
  ['spec.js'] = icon_config(test_icon, js_color, 'javascript'),
  ['spec.jsx'] = icon_config(test_icon, js_color, 'javascriptreact'),
  ['spec.ts'] = icon_config(test_icon, ts_color, 'typescript'),
  ['spec.tsx'] = icon_config(test_icon, ts_color, 'typescriptreact'),
  ['test.js'] = icon_config(test_icon, js_color, 'javascript'),
  ['test.jsx'] = icon_config(test_icon, js_color, 'javascriptreact'),
  ['test.ts'] = icon_config(test_icon, ts_color, 'typescript'),
  ['test.tsx'] = icon_config(test_icon, ts_color, 'typescriptreact'),

  -- angular
  ['component.html'] = icon_config(angular_icon, html_color, 'html'),
  ['component.ts'] = icon_config(angular_icon, ts_color, 'typescript'),
  ['component.css'] = icon_config(angular_icon, css_color, 'css'),
  ['module.ts'] = icon_config(angular_icon, ts_color, 'typescript'),
  ['service.ts'] = icon_config(angular_icon, ts_color, 'javascript'),
}

devicons.setup()
