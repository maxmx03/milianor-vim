local paletts = {
  tokyonight = {
    '#c0caf5',
    '#e0af68',
    '#7dcfff',
    '#9ece6a',
    '#ff9e64',
    '#bb9af7',
    '#7aa2f7',
    '#f7768e',
  },
  kanagawa = {
    '#C8C093',
    '#938056',
    '#6A9589',
    '#98c379',
    '#FFA066',
    '#D16D9E',
    '#658594',
    '#E82424',
  },
  solarized = {
    '#dc322f',
    '#b58900',
    '#2aa198',
    '#719e07',
    '#6c71c4',
    '#268bd2',
  },
  NeoSolarized = {
    '#dc322f',
    '#b58900',
    '#2aa198',
    '#719e07',
    '#6c71c4',
    '#268bd2',
  },
  vscode = {
    '#D4D4D4',
    '#DCDCAA',
    '#4EC9B0',
    '#6A9955',
    '#D16D9E',
    '#569CD6',
    '#F44747',
  },
  gruvbox = {
    '#fbf1c7',
    '#d79921',
    '#689d6a',
    '#D16D9E',
    '#458588',
    '#cc241d',
  },
  ['doom-one'] = {
    '#bbc2cf',
    '#ECBE7B',
    '#46D9FF',
    '#98be65',
    '#c678dd',
    '#51afef',
    '#ff6c6b',
  },
}

if user.theme.rainbow_colors then
  return user.theme.rainbow_colors
elseif paletts[user.theme.colorscheme] then
  return paletts[user.theme.colorscheme]
else
  return paletts['vscode']
end
