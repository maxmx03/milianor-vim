local devicons = require 'nvim-web-devicons'

local function icon_config(icon, color, name)
  return {
    icon = icon,
    color = color,
    name = name,
  }
end

-- custom icon and colors
local git_icon, git_color = '', '#C84b31'
local ruby_color = '#FC4F4F'
local gem_color = '#FA4EAB'
local rubocop_color = '#C0C0C0'

-- default icons
local ruby_icon = devicons.get_icon_color('index.rb', 'rb')

devicons.set_icon {
  -- git
  ['.gitignore'] = icon_config(git_icon, git_color, 'git'),
  ['.gitkeep'] = icon_config(git_icon, git_color, 'git'),

  -- ruby
  rb = icon_config(ruby_icon, ruby_color, 'ruby'),
  ['config.ru'] = icon_config(ruby_icon, ruby_color, 'ruby'),
  ['Gemfile'] = icon_config(ruby_icon, gem_color, 'ruby'),
  ['.rubocop.yml'] = icon_config(ruby_icon, rubocop_color, 'yaml'),
}

devicons.setup {}
