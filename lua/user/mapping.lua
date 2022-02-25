local success, wk = pcall(require, 'which-key')

if not success then
  return
end

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

keymap('n', '<F2>', ':update<cr>', opts)
keymap('n', '<F3>', ':quit<cr>', opts)
keymap('t', '<esc>', [[<C-\><C-n>]], opts) -- exit the terminal

-- show hover doc
wk.register({
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
  b = {
    name = 'Bufferline (Tabs)',
    [']'] = {
      ':BufferLineCycleNext<cr>',
      'Move to the next tab',
    },
    ['['] = {
      ':BufferLineCyclePrev<CR>',
      'Move to the previous tab',
    },
    ['x'] = {
      ':BufferLinePickClose<CR>',
      'Close the selected tab',
    },
    ['l'] = {
      ':BufferLineCloseLeft<CR>',
      'Close all the left tabs',
    },
    ['r'] = {
      ':BufferLineCloseRight<CR>',
      'Close all the right tab',
    },
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
}, { prefix = '<space>' })
