local wk = require('which-key')

wk.setup()

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

keymap('n', '<F2>', ':update<cr>', opts)
keymap('n', '<F3>', ':quit<cr>', opts)
keymap('t', '<esc>', [[<C-\><C-n>]], opts) -- exit the terminal

wk.register(user.keymapping, { prefix = '<space>' })
