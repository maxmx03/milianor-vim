local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true}

keymap("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
keymap("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep<cr>", opts)
keymap("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers<cr>", opts)
keymap("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags<cr>", opts)
