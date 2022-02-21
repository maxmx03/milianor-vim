local success, wk = pcall(require, 'which-key')

if not success then
  return
end

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

keymap('n', '<F2>', ':update<cr>', opts)
keymap('n', '<F3>', ':quit<cr>', opts)
keymap('t', '<esc>', [[<C-\><C-n>]], opts) -- exit the terminal

wk.register({
  b = {
    name = 'Bufferline',
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
    name = 'Telescope',
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
    name = 'Tree',
    n = {
      ':NvimTreeToggle<cr>',
      'Open Tree',
    },
  },
  t = {
    name = 'Terminal',
    t = {
      ':ToggleTerm direction=float<cr>',
      'Open a terminal',
    },
  },
  c = {
    name = 'Code Action',
    a = {
      ':CodeActionMenu<cr>',
      'code action',
    },
  },
}, { prefix = '<space>' })
