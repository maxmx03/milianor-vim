local pallets = {
  kanagawa = {
    bg = '#16161D',
    fg = '#C8C093',
    yellow = '#938056',
    cyan = '#6A9589',
    darkblue = '#7E9CD8',
    green = '#98c379',
    orange = '#FFA066',
    violet = '#938AA9',
    magenta = '#D16D9E',
    blue = '#658594',
    red = '#E82424',
    grey = '#54546D',
  },
  tokyonight = {
    bg = '#24283b',
    fg = '#c0caf5',
    yellow = '#e0af68',
    cyan = '#7dcfff',
    darkblue = '#394b70',
    green = '#9ece6a',
    orange = '#ff9e64',
    violet = '#9d7cd8',
    magenta = '#bb9af7',
    blue = '#7aa2f7',
    red = '#f7768e',
    grey = '#394b70',
  },
  solarized = {
    bg = '#073642',
    fg = '#eee8d5',
    yellow = '#b58900',
    cyan = '#2aa198',
    darkblue = '#081633',
    green = '#719e07',
    orange = '#cb4b16',
    violet = '#a9a1e1',
    magenta = '#6c71c4',
    blue = '#268bd2',
    red = '#dc322f',
    grey = '#536162',
  },
}

if User.theme.colorscheme == 'tokyonight' and User.theme.style == 'night' then
  pallets[User.theme.colorscheme].bg = '#1f2335'
  pallets[User.theme.colorscheme].fg = '#a9b1d6'
end

local colors = pallets[User.theme.colorscheme]

return colors
