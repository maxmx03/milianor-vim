local success, dashboard = pcall(require, 'dashboard')

if not success then
  return
end

dashboard.custom_header = {
  [[      ___           ___           ___                                    ___     ]],
  [[     /__/\         /  /\         /  /\          ___        ___          /__/\    ]],
  [[     \  \:\       /  /:/_       /  /::\        /__/\      /  /\        |  |::\   ]],
  [[      \  \:\     /  /:/ /\     /  /:/\:\       \  \:\    /  /:/        |  |:|:\  ]],
  [[  _____\__\:\   /  /:/ /:/_   /  /:/  \:\       \  \:\  /__/::\      __|__|:|\:\ ]],
  [[ /__/::::::::\ /__/:/ /:/ /\ /__/:/ \__\:\  ___  \__\:\ \__\/\:\__  /__/::::| \:\]],
  [[ \  \:\~~\~~\/ \  \:\/:/ /:/ \  \:\ /  /:/ /__/\ |  |:|    \  \:\/\ \  \:\~~\__\/]],
  [[  \  \:\  ~~~   \  \::/ /:/   \  \:\  /:/  \  \:\|  |:|     \__\::/  \  \:\      ]],
  [[   \  \:\        \  \:\/:/     \  \:\/:/    \  \:\__|:|     /__/:/    \  \:\     ]],
  [[    \  \:\        \  \::/       \  \::/      \__\::::/      \__\/      \  \:\    ]],
  [[     \__\/         \__\/         \__\/           ~~~~                   \__\/    ]],
  [[                                                                                 ]],
  [[                                                                                 ]],
  [[                                                                                 ]],
}

dashboard.custom_center = {
  {
    icon = '  ',
    desc = 'File Browser                            ',
    action = 'NvimTreeToggle',
    shortcut = 'SPC n  ',
  },
  {
    icon = '  ',
    desc = 'Find  File                              ',
    action = 'Telescope find_files find_command=rg,--hidden,--files',
    shortcut = 'SPC f f',
  },
  {
    icon = '  ',
    desc = 'Find  Word                              ',
    action = 'Telescope live_grep',
    shortcut = 'SPC f g',
  },
  {
    icon = '  ',
    desc = 'Exit                                    ',
    action = 'qa',
    shortcut = 'F3    ',
  },
}

local neovim_welcome = '🎉 Have fun with neovim'
local neovim_info = ''
  .. 'Neovim  v'
  .. vim.version().major
  .. '.'
  .. vim.version().minor
  .. '.'
  .. vim.version().patch
  .. '   '
  .. os.date '%d/%m/%Y'

dashboard.custom_footer = { neovim_welcome, neovim_info }
