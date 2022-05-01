local success = pcall(require, 'load')

if success then
  user:setup({
    -- place your lsp servers bellow
    -- for more: https://github.com/williamboman/nvim-lsp-installer
    servers = {
      'tsserver',
      'cssls',
      'html',
      'jsonls',
      'sumneko_lua',
      'svelte',
      'pylsp',
      'vuels',
      'volar',
    },
    -- enable the default server formatter.
    enable_server_formatter = {
      'svelte',
      'vuels', -- remove this line if you are on windows
      'pylsp', --remove this line if you are on windows
    },
    -- change your default theme,
    --
    -- tokyonight
    -- style: 'storm', 'night'
    --
    -- onedarker
    -- style: nil
    --
    -- darkplus
    -- style: nil
    --
    -- solarized
    -- style: nil
    theme = {
      colorscheme = 'onedarker',
      transparent = false,
      style = nil,
      sidebar = 'left',
      italic_comments = true,
      italic_keywords = true,
      italic_functions = false,
      italic_variables = false,
      lualine = 'evil_lualine', -- evil_lualine, bubbles, slanted, default
    },
    keymapping = {
      d = {
        name = 'Dashboard',
        d = {
          '<cmd>Dashboard<cr>',
          'Open Dashboard',
        },
        s = {
          '<cmd>SessionSave<cr>',
          'Save session',
        },
        l = {
          '<cmd>SessionLoad<cr>',
          'Load session',
        },
      },
      l = {
        name = 'Lsp Installer',
        i = {
          '<cmd>LspInstallInfo<cr>',
          'Show Installed and available lsp servers',
        },
      },
      name = 'Bufferline (Tabs)',
      [']'] = {
        ':BufferLineCycleNext<cr>',
        'Move to the next tab',
      },
      ['['] = {
        ':BufferLineCyclePrev<CR>',
        'Move to the previous tab',
      },
      x = {
        ':BufferLinePickClose<CR>',
        'Close the selected tab',
      },
      ['?'] = {
        ':BufferLineCloseLeft<CR>',
        'Close all the left tabs',
      },
      ['/'] = {
        ':BufferLineCloseRight<CR>',
        'Close all the right tab',
      },
      f = {
        name = 'Telescope (Fuzzy Finder)',
        f = {
          "<cmd>lua require('telescope.builtin').find_files()<cr>",
          'Lists files in your current working directory, respects .gitignore',
        },
        g = {
          "<cmd>lua require('telescope.builtin').live_grep()<cr>",
          'Search for a string in your current working directory and get results live as you type (respecting .gitignore)',
        },
        b = { "<cmd>lua require('telescope.builtin').buffers()<cr>", 'Lists open buffers in current neovim instance' },
        h = { "<cmd>lua require('telescope.builtin').help_tags()<cr>", 'Lists available help tags' },
      },
      n = {
        name = 'Tree (File Explorer)',
        n = {
          ':NvimTreeToggle<cr>',
          'Open Tree',
        },
      },
      t = {
        name = 'Terminal (Integrated Terminal)',
        t = {
          ':ToggleTerm direction=float<cr>',
          'Open a terminal',
        },
      },
      g = {
        name = 'LspSaga (Diagnostics and Code Actions)',
        a = {
          '<cmd>Lspsaga code_action<cr>',
          'Code action',
        },
        r = {
          '<cmd>Lspsaga rename<cr>',
          'Rename (will rename other files too)',
        },
        k = {
          '<cmd>Lspsaga show_line_diagnostics<cr>',
          'Show diagnostic',
        },
        K = {
          '<cmd>Lspsaga hover_doc<cr>',
          'Hover',
        },
        n = {
          '<cmd>Lspsaga diagnostic_jump_next<cr>',
          'Show diagnostic and jump to next',
        },
        p = {
          '<cmd>Lspsaga diagnostic_jump_prev<cr>',
          'Show diagnostic and jump to previous',
        },
        d = {
          '<cmd>Lspsaga preview_definition<cr>',
          'Preview definition',
        },
      },
      h = {
        name = 'Git',
        s = {
          '<cmd>Gitsigns stage_hunk<cr>',
          'Stage hunk',
        },
        r = {
          '<cmd>Gitsigns reset_hunk<cr>',
          'Reset hunk',
        },
        p = {
          '<cmd>Gitsigns preview_hunk<cr>',
          'Preview hunk',
        },
        d = {
          '<cmd>Gitsigns diffthis<cr>',
          'Toggle local diff',
        },
        D = {
          '<cmd>DiffviewOpen<cr>',
          'Open project diffview',
        },
        c = {
          '<cmd>DiffviewClose<cr>',
          'Close project diffview',
        },
        b = {
          '<cmd>Gitsigns toggle_current_line_blame<cr>',
          'Toggle blame',
        },
      },
      m = {
        name = 'Flutter',
        r = {
          '<cmd>FlutterRun<cr>',
          'Flutter Run',
        },
        R = {
          '<cmd>FlutterHotRestart<cr>',
          'Flutter Restart',
        },
        q = {
          '<cmd>FlutterQuit<cr>',
          'Flutter Quit',
        },
        v = {
          '<cmd>FlutterVisualDebug<cr>',
          'Flutter Visual Debug',
        },
        o = {
          '<cmd>FlutterOutlineToggle<cr>',
          'Flutter Outline Toggle',
        },
      },
      c = {
        '<cmd>CommentToggle<cr>',
        'Comment Toggle',
      },
      v = {
        name = 'vcoolor',
        c = {
          '<cmd>VCoolor<cr>',
          'hash color insertion',
        },
        r = {
          '<cmd>VCoolIns r<cr>',
          'For rgb color insertion',
        },
        h = {
          '<cmd>VCoolIns h<cr>',
          'hsl color insertion',
        },
        b = {
          '<cmd>VCoolIns ra<cr>',
          'rgba color insertion',
        },
      },
    },
  })
end

vim.cmd([[
    augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
  ]])
