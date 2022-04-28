local utils = require('lib.utils')
local devicons = utils:require('nvim-web-devicons')

local _, js_color = devicons.get_icon_color('index.js', 'js')
local ts_icon, _ = devicons.get_icon_color('index.ts', 'ts')
local _, html_color = devicons.get_icon_color('index.html', 'html')
local ruby_icon = devicons.get_icon_color('index.rb', 'rb')
local ts_color, css_color, git_color, angular_color, karma_color, json_color, ruby_color, gem_color, rubocop_color =
  '#3DB2FF', '#7C83FD', '#C84B31', '#EC4646', '#17D7A0', '#3E7C17', '#FC4F4F', '#FA4EAB', '#C0C0C0'

local html_icon, css_icon, node_icon, giticon, test_icon, angular_icon, karma_icon, webpack_icon, babel_icon =
  '', '', '', '', '', '', '', 'ﰩ', ''

local function iconConfig(icon, color, name)
  return {
    icon = icon,
    color = color,
    name = name,
  }
end

devicons.set_icon({
  html = iconConfig(html_icon, html_color, 'html'),
  css = iconConfig(css_icon, css_color, 'css'),
  ts = iconConfig(ts_icon, ts_color, 'typescript'),
  rb = iconConfig(ruby_icon, ruby_color, 'ruby'),
  ['config.ru'] = iconConfig(ruby_icon, ruby_color, 'ruby'),
  ['Gemfile'] = iconConfig(ruby_icon, gem_color, 'GemFile'),
  ['.rubocop.yml'] = iconConfig(ruby_icon, rubocop_color, 'rubocop'),
  ['package.json'] = iconConfig(node_icon, json_color, 'packagejson'),
  ['package-lock.json'] = iconConfig(node_icon, json_color, 'packagelockjson'),
  ['.gitkeep'] = iconConfig(node_icon, git_color, 'git'),
  ['.gitignore'] = iconConfig(giticon, git_color, 'git'),
  ['spec.js'] = iconConfig(test_icon, js_color, 'javascriptspec'),
  ['spec.jsx'] = iconConfig(test_icon, js_color, 'javascriptreactspec'),
  ['spec.ts'] = iconConfig(test_icon, ts_color, 'typescriptspec'),
  ['spec.tsx'] = iconConfig(test_icon, ts_color, 'typescriptreactspec'),
  ['test.js'] = iconConfig(test_icon, js_color, 'javascripttest'),
  ['test.jsx'] = iconConfig(test_icon, js_color, 'javascriptreacttest'),
  ['test.ts'] = iconConfig(test_icon, ts_color, 'typescripttest'),
  ['test.tsx'] = iconConfig(test_icon, ts_color, 'typescriptreacttest'),
  ['component.html'] = iconConfig(angular_icon, html_color, 'angularhtml'),
  ['component.ts'] = iconConfig(angular_icon, ts_color, 'angularts'),
  ['component.css'] = iconConfig(angular_icon, css_color, 'angularcss'),
  ['module.ts'] = iconConfig(angular_icon, angular_color, 'angularmode'),
  ['service.ts'] = iconConfig(angular_icon, js_color, 'angularservice'),
  ['angular.json'] = iconConfig(angular_icon, angular_color, 'angularjson'),
  ['karma.conf.js'] = iconConfig(karma_icon, karma_color, 'karmaconfig'),
  ['webpack.config.js'] = iconConfig(webpack_icon, ts_color, 'webpack'),
  ['.babelrc'] = iconConfig(babel_icon, js_color, 'babel'),
})

devicons.setup({
  -- your personnal icons can go here (to override)
  -- DevIcon will be appended to `name`
  override = {
    zsh = {
      icon = '',
      color = '#428850',
      name = 'Zsh',
    },
  },
  -- globally enable default icons (default to false)
  -- will get overriden by `get_icons` option
  default = true,
})
