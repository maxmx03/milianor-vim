return {
  {
    'lukas-reineke/indent-blankline.nvim',
    -- commit = 'b2e15a8a2a7c6c06fc4f405844b561fffa123c42', indent-blanline v2
    main = 'ibl',
    config = function()
      local icons = require 'core.navic.icons'

      require('ibl').setup {
        scope = {
          enabled = true,
          char = icons.ui.LineLeft,
        },
        indent = {
          char = icons.ui.LineLeft,
        },
        exclude = {
          filetypes = {
            'dashboard',
            'lspinfo',
            'packer',
            'checkhealth',
            'help',
            'man',
            'NvimTree',
            'Trouble',
            'startify',
            'lazy',
            'neogitstatus',
            'text',
          },
        },
      }

      -- indent blankline v2 config
      -- vim.opt.list = true
      -- vim.opt.listchars:append 'space:⋅'

      -- require('indent_blankline').setup {
      --   -- show_current_context = true,
      --   -- show_current_context_start = true,
      --   -- show_end_of_line = true,
      --   -- space_char_blankline = ' ',
      -- }

      -- vim.g.indent_blankline_filetype_exclude =
      -- { 'dashboard', 'lspinfo', 'packer', 'checkhealth', 'help', 'man', 'NvimTree' }
    end,
  },
}
