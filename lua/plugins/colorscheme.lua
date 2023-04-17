return {
  {
    'maxmx03/dracula.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      local dracula = require 'dracula'

      dracula.setup {
        colors = {
          bg = '#22212C',
          float_bg = '#17161D',
          comment = '#7970A9',
          currentline = '#454158',
          selection = '#454158',
        },
        override = function(c)
          return {
            MiniTablineCurrent = { fg = c.purple, bg = c.blended_purple },
            MiniTablineVisible = { link = 'MiniTablineCurrent' },
          }
        end,
      }

      vim.cmd.colorscheme 'dracula'
    end,
  },
}
