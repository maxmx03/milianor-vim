local colors = {}

-- solarized colors
colors = {
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
}

if user.theme.colorscheme == 'tokyonight' then
  colors = {
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
    grey = '#737aa2',
  }

  if user.theme.style == 'night' then
    colors.bg = '#1f2335'
    colors.fg = '#a9b1d6'
  end
end

if user.theme.colorscheme == 'darkplus' then
  colors = {
    bg = '#1E1E1E',
    fg = '#D4D4D4',
    yellow = '#DCDCAA',
    cyan = '#4EC9B0',
    darkblue = '#223E55',
    green = '#6A9955',
    orange = '#CE9178',
    violet = '#C586C0',
    magenta = '#D16D9E',
    blue = '#569CD6',
    red = '#F44747',
    grey = '#383838',
  }
end

if user.theme.colorscheme == 'onedarker' then
  colors = {
    bg = '#1E232A',
    fg = '#abb2bf',
    yellow = '#E5C07B',
    cyan = '#56B6C2',
    darkblue = '#223E55',
    green = '#98C379',
    orange = '#CE9178',
    violet = '#C678DD',
    magenta = '#D16D9E',
    blue = '#61AFEF',
    red = '#e06c75',
    grey = '#383838',
  }
end

return colors
